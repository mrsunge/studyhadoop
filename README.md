# Study Hadoop 

#### Environment
* VirtualBox with 4 guests OS.
* Hadoop-2.7.2 precompiled stable versionn.
* CentOS7 minimum install.
* jdk-1.8.0
* Spark-1.6.0 precompiled version.
* Hive-1.2.1

#### Tools 
* VirtualBox : https://www.virtualbox.org/
* putty : http://www.chiark.greenend.org.uk/~sgtatham/putty/
* SuperPuTTy : https://github.com/jimradford/superputty

#### VierualBox setting.
* Make 4 guests OS.
 * Master.
   * Name node.
    * Secondary name node.
    * Resource manager.
 * 3 Slaves.
   * Node manager.
    * Data node.
* Add 3 network interface to all guests OS.
 * NAT : to use internet.
 * Host only : to communicate with host OS.
 * Internel Network : to communicate with guest OS.

#### Reference site
* http://git-scm.com/
* http://hadoop.apache.org/
* http://spark.apache.org/
* https://hive.apache.org/downloads.html
* http://www.tecmint.com/things-to-do-after-minimal-rhel-centos-7-installation/
* http://pi ngax.com/install-apache-hadoop-ubuntu-cluster-setup/

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

#### SQLTag Member's github
* https://github.com/ithenine/vagrant
* https://github.com/JudyDBA/sqltag

#### Tez 
```
url : https://tez.apache.org/install.html

Install brew
  url : https://www.digitalocean.com/community/tutorials/how-to-install-and-use-linuxbrew-on-a-linux-vps
  command 
    $ sudo yum update -y
    $ sudo yum groupinstall -y "Development Tools"
  
Install ProtocolBuffer
  * should check required protocol buffer version wrote in pom.xml. don't change version in pom.xml
  url : https://github.com/google/protobuf/tags/
  command 
    $ congigure
    $ make
    $ make check
    $ make install

Make Tez  
  mvn clean package -DskipTests=true -Dmaven.javadoc.skip=true
  
Configure
  set TEZ_CONF_DIR for tez-site.xml
  set TEZ_JARS for tez jar files(tar -xvzf tez-dist/target/tez-x.y.z-minimal.tar.gz -C $TEZ_JARS)
  copy made tez tarbal to hdfs
  set tez tarbal path in tez-site.xml
  add tez jar path to HADOOP_CLASSPATH. 
```

#### Hive
``` 
* create table for loading CSV file.
create table test(col1 int, col2 int, col3 int) 
row format serde 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
with serdeproperties("separatorchar" = ",", "esapechar" = "\\");
```
