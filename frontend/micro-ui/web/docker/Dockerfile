FROM egovio/alpine-node-builder-14:yarn AS build
RUN apk update && apk upgrade
RUN apk add --no-cache git>2.30.0
ARG WORK_DIR
WORKDIR /app
ENV NODE_OPTIONS "--max-old-space-size=8168"

COPY ${WORK_DIR} .
RUN ls -lah

# Accept the build argument
ARG REACT_APP_PUBLIC_PATH
ENV REACT_APP_PUBLIC_PATH=${REACT_APP_PUBLIC_PATH}
# ENV REACT_APP_PUBLIC_PATH="/uat/mgramseva-web/"

#RUN node web/envs.js
RUN cd web/ \
    &&  ./install-deps.sh \
    && yarn install \
    && REACT_APP_PUBLIC_PATH=${REACT_APP_PUBLIC_PATH} yarn build:webpack

FROM nginx:mainline-alpine
#FROM ghcr.io/egovernments/nginx:mainline-alpine
ENV WORK_DIR=/var/web/mgramseva-web

RUN mkdir -p ${WORK_DIR}

COPY --from=build /app/web/build ${WORK_DIR}/
COPY --from=build /app/web/docker/nginx.conf /etc/nginx/conf.d/default.conf
