FROM docker.io/library/alpine:latest
LABEL org.opencontainers.image.authors="Ikramullah <contact@ikr4m.my.id>"
WORKDIR /app

# Set user to root
USER 0:0

# Set volume
VOLUME /app/secrets/

# Set environment
ENV POPM_STATIC_FEE="200"
ENV POPM_BFG_URL="wss://testnet.rpc.hemi.network/v1/ws/public"

# Download Assets
ADD https://github.com/hemilabs/heminetwork/releases/download/v0.4.5/heminetwork_v0.4.5_linux_amd64.tar.gz .
COPY start.sh .

# Update dependency
RUN apk update; \
  apk add --no-cache bash jq; \
  chmod +x start.sh;

# Install app
RUN tar -xvf heminetwork_v0.4.3_linux_amd64.tar.gz; \
  chown -R 0:0 ./heminetwork_v0.4.3_linux_amd64; \
  mv ./heminetwork_v0.4.3_linux_amd64/* .; \
  rm -rf heminetwork_v0.4.3_linux_amd64*;

CMD ["./start.sh"]
