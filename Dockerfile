FROM n8nio/n8n:latest

# Switch to root to install curl and set permissions
USER root

# Fix: Use apt-get instead of apk for the newer n8n images
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

# Force IPv4 and Port settings
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_LISTEN_ADDRESS=0.0.0.0

# Switch back to the node user for security
USER node

EXPOSE 5678

CMD ["n8n"]

