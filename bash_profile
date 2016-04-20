# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

HADOOP_PREFIX=/home/sunge/hadoop/hadoop-2.7.1
HADOOP_HOME=/home/sunge/hadoop/hadoop-2.7.1
HIVE_HOME=/home/sunge/hadoop/hive-1.2.1
TEZ_CONF_DIR=/home/sunge/hadoop/tez/conf
TEZ_JARS=/home/sunge/hadoop/tez/tez_jar

export HADOOP_CLASSPATH=${TEZ_CONF_DIR}:${TEZ_JARS}/*:${TEZ_JARS}/lib/*

PATH=$PATH:$HOME/.local/bin:$HOME/bin:$HADOOP_PREFIX/bin:$HADOOP_PREFIX/sbin:$HIVE_HOME/bin:$TEZ_CONF_DIR

export PATH
