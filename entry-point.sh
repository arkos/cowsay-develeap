#!/bin/sh

# Checks if the port is valid
is_valid_port() {
  local port=$1 
  if [[ $port =~ ^[0-9]+$ ]] && [ $port -ge 0 ] && [ $port -le 65535 ]; then
    return 0;
  else
    return 1; 
  fi
}

PORT=${1:-8080}
echo "Your port is ${PORT}"

if is_valid_port "$PORT"; then 
  echo "Starting the application on port: $PORT"
  export PORT=$PORT
  npm start
else
  echo "Invalid port number: $PORT"
  exit 1
fi 
