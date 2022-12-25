# About

Mercure's server is a real-time server that implements Server-Sent Events (SSE) for data synchronization and
communication between clients and servers.

# Installation

## 1. Generate asymmetric keys

```bash
passphrase=$(openssl rand -hex 32) && echo "$passphrase" >passphrase.txt && ssh-keygen -t rsa -b 4096 -m PEM -N "$passphrase" -f publisher.key && openssl rsa -in publisher.key -passin pass:"$passphrase" -pubout -outform PEM -out publisher.key.pub
```

## 2. Run the server

```bash
make prod
```
