
# Create docker network
docker network create mynet

# Run server container
docker run -d --name srv --network mynet python:3.12-slim sh -c "echo Hello this is docker server! > myfile.txt && python -m http.server 8081"

# Wait for server to start
timeout /t 5

# Run client container and download file
docker run --rm --name client --network mynet python:3.12-slim sh -c "wget http://srv:8081/myfile.txt"
