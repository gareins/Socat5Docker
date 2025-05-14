FROM alpine:latest

WORKDIR /app

# Download socat binary with socks5 support
ARG SOCAT_URL="https://github.com/gareins/static-binaries-socat/releases/download/v0.1.cc71013/socat"
RUN wget -O socat "$SOCAT_URL" && chmod +x socat

# Unsafely run socat with provided arguments
CMD ./socat ${SOCAT_CMD}
