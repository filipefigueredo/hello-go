

###################################################################################################
# Build environment image (used as for building the app                                           #
###################################################################################################
FROM golang:1.17-alpine AS build-environment

# Setting the working directory that will be used in any subsequent command.
WORKDIR /app

# Copy the content of the local repo to the working directory
COPY . .

# Build a 'goapp' application
RUN go build -o goapp

###################################################################################################
# Base image (used for deployment)                                                                #
###################################################################################################
FROM alpine:3.15 AS base

# Update the indexes of all from all configured package repositories, then install ca-certificates 
# bundle inside the docker image, remove the temp cache folde and update ca-certificates.
RUN apk update && \
    apk add ca-certificates && \    
    rm -rf /var/cache/apk/* && \
    update-ca-certificates 

# Setting the working directory that will be used in any subsequent command.
WORKDIR /app

# Copy the  'goapp' application from build-environment image to /app at current image
COPY --from=build-environment /app/goapp .

# Informs Docker that the container listens on the specified network ports at runtime.
#
# Note: The EXPOSE instruction does not actually publish the port. It functions as a documentation
# between the person who builds the image and the person who runs the container, about which ports
# are intended to be published.
EXPOSE 8080

# Start the application using ENTRYPOINT to enable the container to accept appended arguments.
ENTRYPOINT ./goapp