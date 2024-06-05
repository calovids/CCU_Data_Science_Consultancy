# Use an official lightweight base image
FROM alpine:latest

# Install wget
RUN apk --no-cache add wget

# Working directory to download the images
WORKDIR /usr/src/app

# Download a small image
RUN wget https://via.placeholder.com/150 -O small-image.png

# List files to show the downloaded image
CMD ["ls", "-l"]
