```markdown
# Docker Image: DMG Server

![Docker](https://img.shields.io/badge/Docker-Ready-blue) ![License](https://img.shields.io/badge/Version-Latest-green)

## Image Location

The Docker image is available at:  
https://hub.docker.com/r/josephsuess23/dmg-server

---

### Using Docker Compose (Recommended)

Start the server:

```bash
docker-compose up
```

Stop the server:

```bash
docker-compose down
```

---

### No Docker Compose (Not Recommended)

```bash
docker pull josephsuess23/dmg-server:latest
docker run -p 5000:5000 josephsuess23/dmg-server:latest
```

---

# Example queries include:

Get server/model summary:

```bash
curl -X GET http://localhost:5000/summary
```

Expected Output:

```json
{"input_shape":[null,128,128,3],"layers":["conv2d_16","max_pooling2d_8","conv2d_17","max_pooling2d_9","conv2d_18","max_pooling2d_10","conv2d_19","max_pooling2d_11","flatten_8","dropout_4","dense_24","dense_25"],"output_shape":[null,1]}
```

Download an example image (damage) and run inference:

```bash
curl -o /tmp/test_image.jpg https://raw.githubusercontent.com/joestubbs/coe379l-fa25/main/code/Project2/data/damage/-93.66109_30.212114.jpeg
curl -X POST http://localhost:5000/inference -F "image=@/tmp/test_image.jpg"
```

Expected Output:

```json
{"prediction":"damage"}
```

Download an example image (no_damage) and run inference:

```bash
curl -o /tmp/test_image_no_dmg.jpg https://raw.githubusercontent.com/joestubbs/coe379l-fa25/refs/heads/main/code/Project2/data/no_damage/-95.6567_29.835759999999997.jpeg
curl -X POST http://localhost:5000/inference -F "image=@/tmp/test_image_no_dmg.jpg"
```

Expected Output:

```json
{"prediction":"no_damage"}
```
```
