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
## curl -X GET http://localhost:5000/summary

Output: Expect JSON showing the top model's properties.

## curl -X POST http://localhost:5000/inference \
     -H "Content-Type: application/octet-stream" \
     --data-binary "@test_image.jpg"

Output" Expect JSON with one field "prediction" that returns either a "damage" or "no_damage" attribute for that image. 
''
