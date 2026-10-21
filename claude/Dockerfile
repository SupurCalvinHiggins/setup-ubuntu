FROM node:20-bookworm
RUN apt-get update && apt-get install -y git ripgrep curl docker.io && rm -rf /var/lib/apt/lists/*
RUN npm install -g @anthropic-ai/claude-code
ENV CLAUDE_CONFIG_DIR=/home/node/.claude
RUN mkdir -p /home/node/.claude && chown -R node:node /home/node/.claude
USER node
WORKDIR /workspace
