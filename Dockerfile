FROM sjoerdmulder/java8

RUN wget http://download-cf.jetbrains.com/charisma/youtrack-6.0.12619.jar -O youtrack.jar

EXPOSE 8080

VOLUME /data/youtrack

CMD ["java", "-Xmx1g", "-XX:MaxMetaspaceSize=250m", "-Djava.awt.headless=true", "-Ddatabase.location=/data/youtrack", "-jar", "youtrack.jar", "8080"]