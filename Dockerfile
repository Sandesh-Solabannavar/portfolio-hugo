FROM klakegg/hugo:ext-alpine AS builder
WORKDIR /src
COPY . .
RUN hugo --cleanDestinationDir

FROM nginx:alpine
COPY --from=builder /src/public /usr/share/nginx/html