# Docker Image: DMG Server

![Docker](https://img.shields.io/badge/Docker-Ready-blue) ![License](https://img.shields.io/badge/Version-Latest-green)

## Image Location
The Docker image is available at:  
**https://hub.docker.com/r/josephsuess23/dmg-server**


### Using Docker Compose (Recommended)

# Start the server
docker-compose up

# Stop the server
docker-compose down

### No Docker Compose (Not Recommended)
docker pull josephsuess23/dmg-server:latest**
docker run -p 5000:5000 josephsuess23/dmg-server:latest**

# Example queries include:
curl -X GET http://localhost:5000/summary
### Output: Expect JSON showing the top model's properties.

curl -o /tmp/test_image.jpg https://raw.githubusercontent.com/joestubbs/coe379l-fa25/main/code/Project2/data/damage/-93.66109_30.212114.jpeg
curl -X POST http://localhost:5000/inference -F "image=@/tmp/test_image.jpg"
### Expected Output: {"prediction":"damage"}

url -o /tmp/test_image_no_dmg.jpg https://raw.githubusercontent.com/joestubbs/coe379l-fa25/refs/heads/main/code/Project2/data/no_damage/-95.6567_29.835759999999997.jpeg
curl -X POST http://localhost:5000/inference      -F "image=@/tmp/test_image_no_dmg.jpg"
### Expected Output: {"prediction":"no_damage"}
''
