# FROM node:20-alpine

# COPY ./Backend .

# RUN npm install

# CMD ["node", "server.js"]

# Build the Frontend [dist folder]
# Copy the dist folder content in Backend/public folder

FROM node:20-alpine as frontend-builder

COPY ./Frontend /app

WORKDIR /app

RUN npm install

#now we have dist folder inside tehfrontend-build image off the app
RUN npm run build

# Build the Backend
FROM node:20-alpine

COPY ./Backend /app

WORKDIR /app

RUN npm install

# now we will copy the content of the dist foler content into the public folder of the backend
COPY --from=frontend-builder /app/dist /app/public

CMD ["node", "server.js"]