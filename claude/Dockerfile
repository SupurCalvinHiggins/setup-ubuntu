FROM node:20-bookworm
RUN apt-get update && apt-get install -y git ripgrep curl sudo && rm -rf /var/lib/apt/lists/*
RUN npm install -g @anthropic-ai/claude-code
# node image already has a non-root "node" user (UID 1000)
ENV CLAUDE_CONFIG_DIR=/home/node/.claude
RUN mkdir -p /home/node/.claude && chown -R node:node /home/node/.claude
RUN apt-get update && apt-get install -y docker.io && rm -rf /var/lib/apt/lists/*
USER node
WORKDIR /workspace
