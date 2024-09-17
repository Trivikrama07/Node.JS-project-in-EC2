#!/bin/bash
cd /home/nodejs-app
npm start > app.out.log 2> app.err.log < /dev/null &
