FROM node:22-alpine
RUN npm install -g @utilix-tech/mcp
ENTRYPOINT ["utilix-mcp"]
