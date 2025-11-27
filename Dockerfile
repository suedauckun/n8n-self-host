FROM n8nio/n8n:latest

USER root

RUN apk add --update --no-cache \
    build-base \
    g++ \
    cairo-dev \
    jpeg-dev \
    pango-dev \
    giflib-dev \
    pixman-dev \
    pangomm-dev \
    libjpeg-turbo-dev \
    freetype-dev \
    python3

RUN npm install -g @prokodo/n8n-nodes-pdf-toolkit n8n-nodes-pdf-to-images

USER node
