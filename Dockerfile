FROM busybox:1.31.1 AS builder
WORKDIR /app
COPY html/ ./

FROM nginx:alpine
COPY --from=builder /app /usr/share/nginx/html
