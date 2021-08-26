FROM openjdk:11-jre
VOLUME /tmp
ARG DEPENDENCY=target/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app
ARG PORT=8080
EXPOSE $PORT
ENV PORT=$PORT
ENTRYPOINT ["java","-XX:+UnlockExperimentalVMOptions","-XX:MaxRAMFraction=1","-XshowSettings:vm","-cp","app:app/lib/*","dev.demo.docker.DockerApplication"]