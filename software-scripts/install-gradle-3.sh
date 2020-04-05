#!/bin/bash - 
#===============================================================================
#
#          FILE: install-gradle-3.sh
# 
#         USAGE: ./install-gradle-3.sh 
# 
#   DESCRIPTION: Install Gradle on Debian based OS
# 
#        AUTHOR: Anastasia Protopapa, 
#       CREATED: 2020-04-05 15:30:27
#===============================================================================

user= $(whoami)

wget https://services.gradle.org/distributions/gradle-6.3-all.zip -P ~/Downloads
sudo  unzip -d /opt/gradle /home/${user}/Downloads/gradle-6.3-all.zip

gradle_dir="/opt/gradle/gradle-6.3"

sudo su << SUDO_CAT
cat << EOF > /etc/profile.d/gradle.sh
#!/bin/sh
export PATH=${gradle_dir}/bin:${PATH}
EOF
SUDO_CAT

sudo chmod +x /etc/profile.d/gradle.sh
sudo source /etc/profile.d/gradle.sh

gradle -v


