# Java 17 기반 경량 이미지
FROM eclipse-temurin:17-jdk-jammy

# 컨테이너 내부 작업 디렉토리
WORKDIR /app

# 빌드된 jar 파일 복사
# ⚠️ 여기 경로만 나중에 수정하시면 됩니다
COPY build/libs/ec2-docker-0.0.1-SNAPSHOT.jar app.jar

# 애플리케이션 실행
ENTRYPOINT ["java", "-jar", "app.jar"]