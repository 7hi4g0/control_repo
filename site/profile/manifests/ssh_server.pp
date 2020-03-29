class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQDDbnhuFcUMVQO5ow2bf10saqShclQoTbohrQ68jWeIvdzPcDJha6esxmC/e5mI4I24m9t4qxMmDPgxYQ15PWFp6yCgNmWlNPv3ez1UkTxs93HjoQcnD7dstcCyJudHMm0H35IjgwoZupmlXaw77Mqn/AXnVCTjAh/RHzWECpfY7ypWw7I4jQ8bipAG8v2ikeF0tDHWQ1UURZ6uUv9Xi3Rp7Ez/o6uI2iKn6OLBs0EQ58Y+13+qOExD9LY86iRobmYDn9l0l5IWaVZBUev46FBgzlcJ3Jca2K0wuiC1sBF9rLrQEQMRzmbqJRgMNt5xVCpTdWof62HuIF7YmIeWArQCwX/hadIx0z9UXs4WfWd4eMG7tUBijJYtAVavCvwY1/+udlF/Ou9Je4zUo+iCAXNZdABXjRx5Ut/GmejWlJC6DGmYjep0EJQ3FTiyGAKgt9U0boQVQaTls7P0dmuvaZv/506OmeWZ1PKtRHCoru9V2LuXgHIGGD8lUg78bCrot9vOk0RhG/nj+zJDVKNPs+6dQS4ySQnuOxMjh31Fb9rFIzjbH8ZH3ztiA5SY4C2Lp2VfL1wVC82URRUxUpNcD5pgsz9N24nk91Ac0f8iY/V/A1QSr3Jc+zAU8m0hp8ebvi67ab2t/SyOKUVBm3yFKZZPd/13QomLSlSqpSpXEL88nw==',
	}  
}
