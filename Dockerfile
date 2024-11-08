# Step 1: Use an official Node.js runtime as a parent image
FROM node:16-alpine

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy package.json and yarn.lock (or package-lock.json) for dependencies
COPY package.json yarn.lock ./

# Step 4: Install dependencies (for production, or you can omit '--production' for dev dependencies)
RUN yarn install --production

# Step 5: Copy the rest of your application files
COPY . .

# Step 6: Expose the port your app will run on
EXPOSE 3000

# Step 7: Set the command to run your application
CMD ["node", "src/index.js"]
