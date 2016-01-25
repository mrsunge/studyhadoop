# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

HADOOP_PREFIX=/home/sunge/hadoop/hadoop/hadoop-2.7.1

PATH=$PATH:$HOME/.local/bin:$HOME/bin:$HADOOP_PREFIX/bin:$HADOOP_PREFIX/sbin

export PATH
