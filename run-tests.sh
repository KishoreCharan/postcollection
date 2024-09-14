#!/bin/bash

# Exit the script if any command fails
set -e

# Verify Node.js and npm versions
node --version
npm --version

# Install Newman globally
npm install -g newman

# Run the Postman collection with Newman
# Replace 'collection.json' and 'environment.json' with your actual file names
newman run Kishore.postman_collection.json --reporters cli,html --reporter-html-export newman-report.html
