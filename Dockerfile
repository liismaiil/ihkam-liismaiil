# Build stage

FROM node:23 AS builder
WORKDIR /app
COPY package.json ./

RUN yarn install

COPY . .
CMD ["yarn", "build"]

#liismaiil ihkam container prod

FROM node:23

ENV EDITOR='liismaiil'
ENV VERSION="0.5"

LABEL org.opencontainers.image.author="liismaiil"
LABEL org.opencontainers.image.title="ihkam-motawasit"
LABEL org.opencontainers.image.description="courses site"
LABEL org.opencontainers.image.site="ihkam.liismaiil.org"
LABEL org.opencontainers.image.source="github"
LABEL org.opencontainers.image.licenses="apache-2.0"
LABEL VERSION="0.5"

WORKDIR /app

COPY  package.json ./
COPY --from=builder /app/.next ./
COPY --from=builder /app/public ./public
#RUN  npm install npm@11.0.0

RUN yarn install
EXPOSE 8001
CMD ["yarn", "st"]    
