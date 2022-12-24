FROM node:14.18-alpine as build
WORKDIR /app
RUN npx create-react-app /app && \
    npx yarn && \ 
    npx yarn build

FROM nginx:stable-alpine
COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
