# Run server container
docker run -it -- name srv -- network mynet python:3.12-slim bash
echo "Hello this is docker server!">myfile.txt
python -m http.server 8081

# Run client container and download file
docker run --rm --name client --network mynet python:3.12-slim bash
wget http://srv:8081/myfile.txt

