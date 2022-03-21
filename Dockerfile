# the base image to run this app on
FROM alpine:latest

# copy the script file so that we can run it
COPY hello /

# the command to start the app
CMD ["./hello"]