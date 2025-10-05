FROM node:20-bookworm AS build-stage

# 参照原项目文件，改为克隆代码而不是复制代码

RUN git clone --depth 1 https://github.com/sweetwisdom/onlyoffice-web-local app

WORKDIR /app
RUN corepack enable
RUN corepack prepare pnpm@10 --activate

RUN npm config set registry https://registry.npmmirror.com

RUN pnpm install 

RUN pnpm build

# 若要开启gzip请将nginx镜像改为完整包

FROM nginx:1.19.1-alpine AS production-stage

COPY --from=build-stage /app/html /usr/share/nginx/html
COPY --from=build-stage /app/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]