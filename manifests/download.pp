class download (

  String $proatria_dl       = ::sftpplusclient::proatria_dl,
  String $major_version     = ::sftpplusclient::major_version,
  String $minor_version     = ::sftpplusclient::minor_version,
  String $sftpplus_tar      = ::sftpplusclient::sftpplus_tar,
  String $download_location = ::sftpplusclient::download_location,
  Integer $timeout          = ::sftpplusclient::timeout,
  Boolean $verbose          = ::sftpplusclient::verbose,

){

  include ::wget

  ::wget::fetch { "${proatria_dl}/${major_version}/${minor_version}/${sftpplus_tar}":
    destination => "${download_location}/${sftpplus_tar}",
    timeout     => $timeout,
    verbose     => $verbosity,
  }

}
