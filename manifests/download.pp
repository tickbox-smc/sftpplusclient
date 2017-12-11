class sftpplusclient::download (

  String $proatria_dl       = 'http://download.sftpplus.com/client',
  String $major_version     = '1',
  String $minor_version     = '5',
  String $sftpplus_tar      = 'sftpplus-client-rhel6-x86-1.5.64.tar.gz',
  String $download_location = '/deployment',
  Integer $timeout          = 60,
  Boolean $verbose          = true,

){

  include ::wget

  file { $download_location:

    ensure => 'directory',
    mode   => '0755',
    owner  => 'root',
    group  => 'root',  

  }

  ::wget::fetch { "${proatria_dl}/${major_version}/${minor_version}/${sftpplus_tar}":
    destination => "${download_location}/${sftpplus_tar}",
    timeout     => $timeout,
    verbose     => $verbosity,
    require     => File[$deploy_dir],
  }

}
