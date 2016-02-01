# studyhadoop

* reference site
** http://www.tecmint.com/things-to-do-after-minimal-rhel-centos-7-installation/
** http://pingax.com/install-apache-hadoop-ubuntu-cluster-setup/

* update & install
** sudo yum -y update && yum -y upgrade
** yum install net-tools
** turn on disabled network interface
** sudo vi /etc/hostname
** sudo yum -y install gcc
** sudo yum -y install wget
** sudo yum -y install telnet
** sudo yum install epel-release
** sudo rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
** sudo rpm -Uvh http://www.elrepo.org/elrepo-release-7.0-2.el7.elrepo.noarch.rpm
** sudo yum install p7zip

structure
	home 
        	hadoop
                	hadoop-x.x.x
                	hive-x.x.x

-- tez
 sudo yum -y install npm
 sudo yum -y install protobuf-c-compiler.x86_64
