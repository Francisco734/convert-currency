# syntax=docker/dockerfile:1.4

FROM node:17.0.1-bullseye-slim as builder

RUN mkdir /project
WORKDIR /project

RUN npm install -g @angular/cli@14

COPY ./frontend/convert-currency-app/package.json ./frontend/convert-currency-app/package-lock.json ./
RUN npm ci

COPY . .
CMD ["ng", "serve", "--host", "0.0.0.0"]

FROM builder as dev-envs

RUN apt-get update
RUN apt-get install -y --no-install-recommends git


RUN useradd -s /bin/bash -m vscode
RUN groupadd docker
RUN usermod -aG docker vscode

# install Docker tools (cli, buildx, compose)
COPY --from=gloursdocker/docker / /

CMD ["ng", "serve", "--host", "0.0.0.0"]