FROM ubuntu:latest

RUN cd /usr/local/bin && \
    apt update && \
    apt install -y curl unzip && \
    curl -L -o butler.zip https://broth.itch.ovh/butler/linux-amd64/LATEST/archive/default && \
    unzip butler.zip && \
    chmod +x butler && \
    rm butler.zip && \
    apt remove -y curl unzip && \
    apt autoremove -y && \
    rm -rf /var/lib/apt/lists/*
	
CMD ["bash"]
