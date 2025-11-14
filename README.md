Docker Read-Me

The image is located at: https://hub.docker.com/r/josephsuess23/dmg-server

To use the server,

**docker-compose up**

To stop the server, 

**docker-compose down** 

If you do not want to use docker compose, you must execute the following:

**docker pull josephsuess23/dmg-server:latest**
**docker run -p 5000:5000 josephsuess23/dmg-server:latest**

Example queries include:
curl -X GET http://localhost:5000/summary

Output: Expect JSON showing the top model's properties.

curl -X POST http://localhost:5000/inference \
     -H "Content-Type: application/octet-stream" \
     --data-binary "@test_image.jpg"

Output" Expect JSON with one field "prediction" that returns either a "damage" or "no_damage" attribute for that image. 
