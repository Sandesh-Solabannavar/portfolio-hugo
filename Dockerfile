FROM klakegg/hugo:ext-alpine AS builder
WORKDIR /src
COPY . .
RUN hugo --gc --baseURL https://portfolio.isandeshsol.com --destination public --minify
RUN echo $(ls -l /src)

FROM nginx:alpine
COPY --from=builder /src/public /usr/share/nginx/html
RUN echo $(ls -l /usr/share/nginx/html)