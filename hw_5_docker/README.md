<h1>Alpine-Apache Web Server</h1>
<hr>
<i>Homework for DevOps Spring School <br>
by Oleksandr Lysenko</i>
<hr>

**Build this docker image:** <br>
Open the folder with this Dockerfile <br>
`docker build -t alpine-apache2:v1 .`

**Run this docker container:**<br>
`docker run -it alpine-apache2:v1` or `docker run -d alpine-apache2:v1` (run this container in the back ground)

**Enter in container:**<br>
`docker exec -t <container ID> /bin/bash`

**Delete container:**<br>
`docker rm <container ID>`

**Delete image:**<br>
`docker rmi <container ID>`
