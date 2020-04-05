#!/bin/bash - 
#===============================================================================
#
#          FILE: install-maven-3.sh
# 
#         USAGE: ./install-maven-3.sh 
# 
#   DESCRIPTION: Install Maven 3.6.3 on Debian based OS 
# 
#        AUTHOR: YOUR NAME (), 
#       CREATED: 2020-04-05 15:27:41
#===============================================================================

user= $(whoami)
maven_dir="/opt/maven"

wget https://www-us.apache.org/dist/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz -P ~/Downloads
sudo tar xf /home/${user}/Downloads/apache-maven-*.tar.gz -C /opt
sudo ln -s /opt/apache-maven-3.6.3 ${maven_dir}
 
sudo su << SUDO_CAT
cat << EOF > /etc/profile.d/maven.sh
#!/bin/sh
export M2_HOME=${maven_dir}
export MAVEN_HOME=${maven_dir}
export PATH=${maven_dir}/bin:${PATH}
EOF
SUDO_CAT

sudo chmod +x /etc/profile.d/maven.sh
sudo source /etc/profile.d/maven.sh

mvn --version

