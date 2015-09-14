FROM sjoerdmulder/java8

RUN wget https://download.jetbrains.com/charisma/youtrack-6.5.16655.jar -O youtrack.jar

EXPOSE 8080

VOLUME /data/youtrack

CMD ["java", "-Xmx1g", "-XX:MaxMetaspaceSize=250m", "-Djava.awt.headless=true", "-Ddatabase.location=/data/youtrack", "-jar", "youtrack.jar", "8080"]
