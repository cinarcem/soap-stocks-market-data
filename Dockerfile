FROM gradle:8.12.1-jdk17 AS build
WORKDIR /app

COPY build.gradle settings.gradle ./
RUN gradle dependencies --no-daemon

COPY src ./src

RUN gradle build -x test --no-daemon

FROM eclipse-temurin:17-jre-alpine
WORKDIR /app

EXPOSE ${PORT}
EXPOSE ${STOCK_DATA_URL}

COPY --from=build /app/build/libs/*.jar app.jar

ENV TZ=Europe/Istanbul

ENTRYPOINT ["java", "-jar", "app.jar"]