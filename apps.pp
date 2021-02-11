#this is a sample puppet file for the KKE devops question - Puppet Manage Services
#please check your question and change below file config as per your question details.
#this file have the configuration to install the vsftpd package ( you might ask to install different package)

package {'vsftpd':
    ensure  => 'present'
        }
service {'vsftpd':
	ensure => 'running',
	enable => 'true',
	require => Package["vsftpd"]
 }
node default {}
node 'stapp01', 'stapp02', 'stapp03' {
include vsftpdconf
}
