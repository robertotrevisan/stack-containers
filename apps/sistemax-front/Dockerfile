FROM node:14.18-alpine as build
WORKDIR /app
#COPY . .
RUN npx create-react-app /app
RUN npx yarn 
RUN npx yarn build

FROM nginx:stable-alpine
COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]