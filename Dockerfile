# use debian as base image
FROM ubuntu:latest

# install all latex packages
RUN apt-get update && apt-get install -y \
    texlive-full

# Entrypoint
## Copy entrypoint
COPY entrypoint.sh /

## Mark entrypoint as executable
RUN chmod +x /entrypoint.sh

## Set entrypoint
ENTRYPOINT ["/entrypoint.sh"]
