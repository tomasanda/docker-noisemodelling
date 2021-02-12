# NoiseModelling docker image

Docker image for the [NoiseModelling](https://github.com/Ifsttar/NoiseModelling) library which is capable of producing noise maps of cities.

```bash
docker run -dt --name noisemodelling -p 9580:9580 --mount type=bind,source="$(pwd)"/data,target=/data tomasanda/noisemodelling:latest
```

## Example `docker-compose.yml`

- Create a `docker-compose.yml` and paste the content below.
- Create a `data` folder in the same directory to be able to mount it as a volume.
- Add your desired files in the folder.
```docker
version: '3'
services:
  noisemodelling:
    image: tomasanda/noisemodelling:latest
    container_name: noisemodelling_latest
    ports:
      - "9580:9580"
    volumes:
      - type: bind
        source: ./data
        target: /data
```
