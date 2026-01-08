FROM hugomods/hugo:0.146.0 AS builder
WORKDIR /src

COPY . .

RUN hugo --gc --minify

FROM nginx:alpine
RUN rm -rf /usr/share/nginx/html/*

COPY --from=builder /src/public /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
