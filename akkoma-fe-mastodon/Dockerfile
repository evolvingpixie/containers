FROM node:20 as builder
WORKDIR /build

RUN git clone https://akkoma.dev/esm/akkoma-fe.git ./ 
COPY ./config.json /build/static/config.json
RUN sed 's/wetdry.world\//shrimp1.dev.thetransagenda.gay/g' -i ./src/boot/after_store.js && \
    sed 's/read write follow push admin:read admin:write/read write follow/g' -i ./src/services/new_api/oauth.js

RUN yarn
RUN npm run build


FROM nginx:alpine
LABEL org.opencontainers.image.authors="@phoenix_fairy@thetransagenda.gay"
LABEL org.opencontainers.image.source="https://akkoma.dev/esm/akkoma-fe"
LABEL org.opencontainers.image.url="https://github.com/evolvingpixie/containers"

COPY --from=builder /build/dist /usr/share/nginx/html 
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80

