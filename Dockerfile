FROM hugomods/hugo:0.146.0 AS builder
WORKDIR /src
COPY . .
RUN hugo --gc --minify
RUN echo $(ls -l /src)

FROM nginx:alpine
COPY --from=builder /src/public /usr/share/nginx/html
RUN echo $(ls -l /usr/share/nginx/html)