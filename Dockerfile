# Stage 1: Builder (gather static files)
FROM busybox:1.31.1 AS builder
WORKDIR /app
COPY html/ ./

# Stage 2: Nginx runtime
FROM nginx:alpine
COPY --from=builder /app /usr/share/nginx/html
