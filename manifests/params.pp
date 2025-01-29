# Class: bind::params
#
class bind::params {

  case $facts['os']['family']{
    'RedHat': {
      $packagenameprefix = 'bind'
      $servicename       = 'named'
      $binduser          = 'root'
      $bindgroup         = 'named'
      $file_hint         = 'named.ca'
      $file_rfc1912      = '/etc/named.rfc1912.zones'
      $file_bindkeys     = '/etc/named.root.key'
    }
    default: {
      $packagenameprefix = 'bind'
      $servicename       = 'named'
      $binduser          = 'root'
      $bindgroup         = 'named'
      $file_hint         = 'named.ca'
      $file_rfc1912      = '/etc/named.rfc1912.zones'
      $file_bindkeys     = '/etc/named.iscdlv.key'
    }
  }

}

