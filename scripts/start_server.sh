#!/bin/bash
cd /home/ec2-user/my-node-app
npm start > app.out.log 2> app.err.log < /dev/null &
