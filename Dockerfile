FROM n8nio/n8n:latest

# Root yetkisi al (Linux paketlerini kurmak için)
USER root

RUN apk add --no-cache \
    build-base \
    g++ \
    cairo-dev \
    jpeg-dev \
    pango-dev \
    giflib-dev
# Tekrar güvenli kullanıcıya dön
USER node
