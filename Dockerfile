FROM oraclelinux:8.4
LABEL name=akashneel
RUN dnf install java-1.8.0-openjdk.x86_64  java-1.8.0-openjdk-devel.x86_64  maven git -y 
RUN mkdir /akashneel-java
WORKDIR /akashneel-java
RUN git clone https://github.com/akashneel-almighty/java-springboot.git
WORKDIR java-springboot
# now running maven to create .war file 
RUN mvn clean package
