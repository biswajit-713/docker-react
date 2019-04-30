# build phase
FROM node:alpine as builder

WORKDIR '/app'

COPY package.json .

RUN npm install

COPY . .

RUN npm run build

# run phase
# expose command is used to indicate to cloud services to open port 80 to outside
# when using the image in local EXPOSE does not have any impacts
EXPOSE 80
FROM nginx

COPY --from=builder /app/build /usr/share/nginx/html