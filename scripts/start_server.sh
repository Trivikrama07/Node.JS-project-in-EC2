#!/bin/bash

# Change to the application directory
cd /home/ec2-user/my-node-app || exit

# Kill any running Node.js application on the default port (3000) or any process using node
echo "Stopping any existing Node.js application..."
pkill node

# Start the Node.js application in the background and redirect logs
echo "Starting the Node.js application..."
# nohup node app.js > app.log 2>&1 &
node app.js

# Check if the application started successfully
if [[ $? -eq 0 ]]; then
  echo "Node.js application started successfully!"
else
  echo "Failed to start Node.js application."
  exit 1
fi

