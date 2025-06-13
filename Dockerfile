FROM azul/zulu-openjdk-alpine:17
COPY ./build/libs/*SNAPSHOT.jar jpademo.jar
ENTRYPOINT ["java", "-jar", "jpademo.jar"]