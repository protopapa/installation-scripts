#!/bin/bash
set -e

echo "Starting to install Software at your machine"

if [[ -f /etc/os-release ]]; then
    # freedesktop.org and systemd
    . /etc/os-release
    OS=$NAME
    VER=$VERSION_ID
fi

echo "OS: "$OS" with version: "$VER




install_git() {

echo "Starting with git"

if [[ "$OS" == "Ubuntu" ]]; then 
	add-apt-repository ppa:git-core/ppa 
	apt update; apt install git
elif [[ "$OS" == "Debian" ]]; then
	apt-get update; apt-get install git
else
	echo "This script does not work for "$OS
fi

echo "Git is installed with version: "$(git --version)
}


install_java(){
echo "Starting with Java 11"

JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"

apt-get install openjdk-11-jre openjdk-11-jdk

echo "Setting the Java PATH"
cat << EOF > /etc/profile.d/java.sh
#!/bin/sh
export JAVA_HOME=${JAVA_HOME}
export PATH=${JAVA_HOME}/bin:${PATH}
EOF

chmod +x /etc/profile.d/java.sh
source /etc/profile.d/java.sh
}

install_maven(){

echo "Install Maven"

maven_dir="/opt/maven"

apt-get update;
wget https://www-us.apache.org/dist/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz -P /home/protopapa/Downloads
tar xf /home/protopapa/Downloads/apache-maven-*.tar.gz -C /opt
ln -s /opt/apache-maven-3.6.3 ${maven_dir}

cat << EOF > /etc/profile.d/maven.sh
#!/bin/sh
export M2_HOME=${maven_dir}
export MAVEN_HOME=${maven_dir}
export PATH=${maven_dir}/bin:${PATH}
EOF

chmod +x /etc/profile.d/maven.sh
source /etc/profile.d/maven.sh

mvn --version

}


install_gradle(){
echo "Install Gradle"

apt-get update && apt-get install unzip
wget https://services.gradle.org/distributions/gradle-6.3-all.zip -P ~/Downloads
unzip -d /opt/gradle ~/Downloads/gradle-6.3-all.zip

gradle_dir="/opt/gradle/gradle-6.3"

cat << EOF > /etc/profile.d/gradle.sh
#!/bin/sh
export PATH=${gradle_dir}/bin:${PATH}
EOF

chmod +x /etc/profile.d/gradle.sh
source /etc/profile.d/gradle.sh

gradle -v

}

echo "Cleaning"
rm -rf ~/Downloads/*
rm -rf /home/protopapa/Downloads/*
