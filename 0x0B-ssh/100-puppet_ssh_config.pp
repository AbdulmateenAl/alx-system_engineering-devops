#!/usr/bin/env bash
# Using puppet to change my configuration file
file { 'etc/ssh/ssh.config':
	ensure  => present,
content => "

	#SSH client configuration
	host*
	IdentityFile ~/.ssh/school
	PasswordAuthentication no
	",
}
