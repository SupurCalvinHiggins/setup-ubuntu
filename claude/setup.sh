#!/bin/bash
cp ./claude ~/bin/claude
mkdir -p ~/.config/claude-sandbox
cp ./Dockerfile ~/.config/claude-sandbox/
cp ./compose.yml ~/.config/claude-sandbox/
mkdir -p ~/.config/claude-sandbox/.claude
chmod +x ~/bin/claude
docker compose -f ~/.config/claude-sandbox/compose.yml build
