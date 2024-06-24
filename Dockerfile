FROM public.ecr.aws/docker/library/node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install --save-dev mocha assert
COPY . .
#RUN npm test
EXPOSE 3000
#HEALTHCHECK --interval=30s --timeout=10s --start-period=5s CMD curl -f http://localhost:3000/ || exit 1

CMD ["npm", "start"]
