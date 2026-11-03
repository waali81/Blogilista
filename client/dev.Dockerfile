FROM node:24

WORKDIR /usr/src/app

COPY . .

# Install dependencies for development
RUN npm install

# Start Vite in development mode
CMD ["npm", "run", "dev", "--", "--host"]