FROM hugomods/hugo:0.146.0 AS builder
WORKDIR /src
COPY . .
RUN hugo mod get -u
RUN hugo mod vendor
RUN hugo --gc --minify

FROM nginx:alpine

RUN mkdir -p /usr/share/nginx/html && chmod -R 755 /usr/share/nginx/html
RUN rm -rf /usr/share/nginx/html/*

COPY --from=builder /src/public /usr/share/nginx/html

RUN chmod -R 755 /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
