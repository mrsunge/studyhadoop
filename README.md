# Study Hadoop 

#### VierualBox setting.
* Make 4 guest OS.
 * Master.
   * Name node.
    * secondary name node.
    * Resource manager.
 * 3 Slaves.
   * Node manager.
    * Data node.
* Add 3 network interface.
 * NAT : for internet.
 * Host only : to communicate with host OS.
 * Internel Network : to communicate with guest OS.

#### Reference site
* http://www.tecmint.com/things-to-do-after-minimal-rhel-centos-7-installation/
* http://pingax.com/install-apache-hadoop-ubuntu-cluster-setup/

#### Update & Install
```bash
sudo yum -y update && yum -y upgrade
yum install net-tools
turn on disabled network interface
sudo vi /etc/hostname
sudo yum -y install gcc
sudo yum -y install wget
sudo yum -y install telnet
sudo yum install epel-release
sudo rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
sudo rpm -Uvh http://www.elrepo.org/elrepo-release-7.0-2.el7.elrepo.noarch.rpm
sudo yum install p7zip

structure
	home 
        	hadoop
                	hadoop-x.x.x
                	hive-x.x.x

```
