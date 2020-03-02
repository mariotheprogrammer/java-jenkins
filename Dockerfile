FROM  maven:3.6.3-jdk-8
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN mvn clean install
