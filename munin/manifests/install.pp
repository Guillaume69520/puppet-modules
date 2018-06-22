class munin::install {

package { $munin::params::munin_package_name:
 	ensure => present,
 	before => File['/etc/munin/apache24.conf'],
 }

file { '/etc/munin/apache24.conf':
	notify => Service['apache2'],
	ensure => file,
 	source=>'/etc/puppet/modules/munin/files/apache24.conf',
 }


}

