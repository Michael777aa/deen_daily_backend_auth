#!/bin/bash

# PRODUCTION

echo "Switching to the main branch and pulling the latest changes from Git..."
git reset --hard
git checkout main
git pull origin main

echo "Installing dependencies..."
npm install

echo "Building the application..."
npm run build

echo "Starting the application in production mode using PM2..."
pm2 start dist/server.js --name=fastify-backend-project --env production


echo "Production deployment complete!"
