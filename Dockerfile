FROM node:18-alpine
WORKDIR /app
RUN echo "=== Checking build context ==="
RUN ls -la /
RUN echo "=== Checking workspace ==="
RUN ls -la /workspace || echo "No workspace directory"
RUN echo "=== Current directory ==="
RUN pwd
RUN ls -la .
RUN echo "=== Copying package.json ==="
COPY package.json ./
RUN echo "=== After copy ==="
RUN ls -la .
RUN cat package.json
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]