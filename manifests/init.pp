# Class: sftpplusclient
# ===========================
#

class sftpplusclient (

  String $proatria_dl,
  String $major_version,
  String $minor_version,
  String $sftpplus_tar,
  String $download_location,
  Integer $timeout,
  Boolean $verbose,

){

  include ::sftpplusclient::download

}
