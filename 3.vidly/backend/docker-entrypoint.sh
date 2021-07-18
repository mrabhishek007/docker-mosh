#!/bin/sh

echo "Waiting for MongoDB to start..."
# Below script prevent from migrating db unless Database starts
./wait-for db:27017 

echo "Migrating the database..."
npm run db:up 

echo "Starting the server..."
npm start 