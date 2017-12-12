# Class: sftpplusclient
# ===========================
#

class sftpplusclient {

  class { '::sftpplusclient::download':}
  class { '::sftpplusclient::deploy': }

  Class[ '::sftpplusclient::download' ]
  -> Class[ '::sftpplusclient::deploy' ]

}
