# Imagem para publicação da API da Calculadora de Tributos (perfil offline, SQLite embarcado).
# O banco calculadora-pro.db é gerado pelo Flyway durante o build.
FROM maven:3.9-eclipse-temurin-21 AS build
WORKDIR /app
COPY . .
RUN mkdir -p calculadora/db \
 && mvn -B -q flyway:migrate -Dflyway.configFiles=./flyway/flyway-pro.conf \
 && mvn -B -q clean package -DskipTests

FROM eclipse-temurin:21-jre
WORKDIR /app
COPY --from=build /app/target/api-regime-geral.jar /app/api-regime-geral.jar
COPY --from=build /app/calculadora/db /app/calculadora/db
ENV PORT=8080
EXPOSE 8080
# Memória limitada para o plano gratuito do Render (512 MB).
CMD ["sh", "-c", "exec java -Xmx320m -XX:+UseSerialGC -Dspring.profiles.active=offline -Dserver.port=${PORT} -jar /app/api-regime-geral.jar"]
