FROM node:22-bookworm-slim

RUN apt-get update && apt-get install -y entr jq && rm -rf /var/lib/apt/lists/*

RUN mkdir /app
WORKDIR /app
