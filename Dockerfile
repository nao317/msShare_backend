# ベースイメージ（OpenJDK17推奨）
FROM openjdk:17-jdk-slim

# 作業ディレクトリ
WORKDIR /app

# JARファイルをコンテナにコピー
COPY build/libs/ms-share-0.0.1-SNAPSHOT.jar app.jar

# ポート（Spring Bootのデフォルトポート）
EXPOSE 8080

# アプリケーションの実行
ENTRYPOINT ["java", "-jar", "app.jar"]
