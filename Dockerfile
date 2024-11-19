FROM node:18
# setup workspace
WORKDIR /app

# install angular
RUN npm install -g @angular/cli

# copy dependency files
COPY package*.json ./

# install dependencies
RUN npm install

# RUN server
EXPOSE 4200
CMD ["ng", "serve", "--host", "0.0.0.0", "--poll=2000", "--port", "4200", "--disable-host-check"]

# FROM node:18

# # Define workspace
# WORKDIR /app

# # Install Angular CLI
# RUN npm install -g @angular/cli

# COPY package*.json ./

# RUN npm install

# # Copy rest of files
# COPY . .

# # Expose port 4200
# EXPOSE 4200

# # Start Angular dev server
CMD ["ng", "serve", "--host", "0.0.0.0", "--poll=2000", "--port", "4200", "--disable-host-check"]


# FROM node:18

# # Define workspace
# WORKDIR /app

# # Install Angular CLI
# RUN npm install -g @angular/cli

# COPY package*.json ./
# RUN npm install

