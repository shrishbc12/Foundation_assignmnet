# Create a Docker network
docker network create mynet

# Run server container
docker run -d --name srv --network mynet python:3.12-slim powershell -Command "echo 'Hello this is docker server!' > myfile.txt; python -m http.server 8081"

# Run client container and download file
docker run --rm --name client --network mynet python:3.12-slim powershell -Command "Invoke-WebRequest http://srv:8081/myfile.txt -OutFile myfile_downloaded.txt; Get-Content myfile_downloaded.txt"
