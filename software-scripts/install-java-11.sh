#!/bin/bash - 
#===============================================================================
#
#          FILE: install-java-11.sh
# 
#         USAGE: ./install-java-11.sh 
# 
#   DESCRIPTION: Installs Java 11 OpenJDK
# 
#        AUTHOR: Anastasia Protopapa, 
#       CREATED: 2020-04-05 15:17:10
#===============================================================================


JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"
 
sudo apt-get install openjdk-11-jre openjdk-11-jdk

echo "Setting the Java PATH"

sudo su << SUDO_CAT
cat << EOF > /etc/profile.d/java.sh
#!/bin/sh
export JAVA_HOME=${JAVA_HOME}
export PATH=${JAVA_HOME}/bin:${PATH}
EOF
SUDO_CAT

sudo chmod +x /etc/profile.d/java.sh
sudo source /etc/profile.d/java.sh


