#!/bin/bash
# Kill any existing node process
pkill node
# Start the Node.js application
nohup npm start > /dev/null 2>&1 &
