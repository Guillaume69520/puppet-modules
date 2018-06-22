class sshd::install {

package { $sshd::params::ssh_package_name:
 	ensure => present,
 	before => File['/etc/ssh/sshd_config'],
 }

file { '/etc/ssh/sshd_config':
	ensure => file,
 	mode => '0600',
 	content=>template("/etc/puppet/modules/sshd/template/sshd_config.erb"),
 }
}

