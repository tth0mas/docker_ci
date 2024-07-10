FROM ubuntu:16.04

# Install necessary packages and add the PPA repository for podman
RUN apt-get update -qq \
    && apt-get install -qq -y software-properties-common uidmap \
    && add-apt-repository -y ppa:projectatomic/ppa \
    && apt-get update -qq \
    && apt-get -qq -y install podman \
    && apt-get install -y iptables

# Ensure the directory and file for storage.conf exist before modifying
RUN mkdir -p /etc/containers && \
    touch /etc/containers/storage.conf && \
    sed -i "s/overlay/vfs/g" /etc/containers/storage.conf

# Ensure the directory and file for registries.conf exist before modifying
RUN mkdir -p /etc/containers && \
    touch /etc/containers/registries.conf && \
    echo -e "[registries.search]\nregistries = []" > /etc/containers/registries.conf

# Add docker.io as a search registry
RUN sed -i '0,/\[\]/s/\[\]/["docker.io"]/' /etc/containers/registries.conf
