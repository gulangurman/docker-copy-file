# Docker file copy sample 

An example app that runs a script file that prints a hello message.

You can download the built image from Docker Hub:

    docker pull gulangurman/docker-copy-file:latest

# Build

First build the image and tag it with a name.

    $ docker build -t gulangurman/docker-copy-file .
    [+] Building 3.2s (8/8) FINISHED
    => [internal] load build definition from Dockerfile                                                                                  0.1s
    => => transferring dockerfile: 207B                                                                                                  0.0s
    => [internal] load .dockerignore                                                                                                     0.1s
    => => transferring context: 2B                                                                                                       0.0s
    => [internal] load metadata for docker.io/library/alpine:latest                                                                      2.6s
    => [auth] library/alpine:pull token for registry-1.docker.io                                                                         0.0s
    => [internal] load build context                                                                                                     0.1s
    => => transferring context: 64B                                                                                                      0.0s
    => CACHED [1/2] FROM docker.io/library/alpine:latest@sha256:d6d0a0eb4d40ef96f2310ead734848b9c819bb97c9d846385c4aca1767186cd4         0.0s
    => => resolve docker.io/library/alpine:latest@sha256:d6d0a0eb4d40ef96f2310ead734848b9c819bb97c9d846385c4aca1767186cd4                0.0s
    => [2/2] COPY hello /                                                                                                                0.1s
    => exporting to image                                                                                                                0.1s
    => => exporting layers                                                                                                               0.1s
    => => writing image sha256:530ef368eb57cb381fa6231d093b92d27092c21eeacdff302a7a46f5ce605d2d                                          0.0s
    => => naming to docker.io/gulangurman/docker-copy-file                                                                               0.0s

    Use 'docker scan' to run Snyk tests against images to find vulnerabilities and learn how to fix them

# Check

Check that your image is listed among other docker images on your system.    

    $ docker images
    REPOSITORY                      TAG       IMAGE ID       CREATED          SIZE
    gulangurman/docker-copy-file    latest    530ef368eb57   35 seconds ago   5.58MB
    gulangurman/docker-echo-hello   latest    00c929c60ef4   4 days ago       5.57MB
    docker/getting-started          latest    bd9a9f733898   5 weeks ago      28.8MB

# Run

Now run the image you've just built.
The image will copy the script file into the container and run it.

    $ docker run -d --name copy-container gulangurman/docker-copy-file
    ed89d2ec5101ad8b57fe42ff247999c48105a3ce90fce3d63bcf3590e9041826

# View logs

You can see the output message in the container logs.

    $ docker logs copy-container    
    hello world!

