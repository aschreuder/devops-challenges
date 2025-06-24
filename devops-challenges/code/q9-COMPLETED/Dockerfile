# Stage 1 - Build
FROM node:24-alpine AS build

WORKDIR /app

COPY package.json ./
COPY server.js ./
COPY index.html ./

#Install dependencies
RUN npm install

# Run the build
RUN npm run build

# Stage 2 - Production
FROM node:24-bullseye-slim AS production

# Run the application as a non-root user.
USER node

WORKDIR /app

COPY --from=build /app /app

#ENV NODE_ENV=production

# Expose port 3000
EXPOSE 3000

ENTRYPOINT [ "node", "server.js" ]

# Start the App
CMD ["npm", "start"]