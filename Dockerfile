FROM node:12-alpine as builder
WORKDIR /opt
ARG VERSION=1.9.2
RUN wget https://github.com/YMFE/yapi/archive/v${VERSION}.zip
RUN unzip v${VERSION}.zip && mv yapi-${VERSION} yapi
RUN cd /opt/yapi && yarn install

FROM node:12-alpine
ENV TZ="Asia/Shanghai"
WORKDIR /opt/yapi
COPY --from=builder /opt/yapi /opt/yapi
EXPOSE 3000
CMD ["yarn", "start"]
