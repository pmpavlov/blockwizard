FROM openjdk:8-jdk-alpine
MAINTAINER Pavel Pavlov <ppavlov@dontmail.me>

ARG mode

COPY . /usr/src/myapp
WORKDIR /usr/src/myapp

# Run as non-root
RUN addgroup -g 1001 -S appuser && adduser -u 1001 -S appuser -G appuser
RUN chown -R appuser:appuser /usr/src/myapp
USER appuser

CMD ["java", "-Dspring.profiles.active=${mode}","-jar","blockwizard.jar"]
