FROM node:18

# Define workspace
WORKDIR /app

# Install Angular CLI
RUN npm install -g @angular/cli

COPY package*.json ./

RUN npm install

# Copy rest of files
COPY . .

# Expose port 4200
EXPOSE 4200

# Start Angular dev server
CMD ["npm", "start"]
