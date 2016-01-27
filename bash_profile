# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

HADOOP_PREFIX=/home/sunge/hadoop/hadoop-2.7.1
HADOOP_HOME=/home/sunge/hadoop/hadoop-2.7.1
HIVE_HOME=/home/sunge/hadoop/hive-1.2.1

PATH=$PATH:$HOME/.local/bin:$HOME/bin:$HADOOP_PREFIX/bin:$HADOOP_PREFIX/sbin:$HIVE_HOME/bin

export PATH
