FROM n8nio/n8n:latest

USER root

# Ensure the container knows where the n8n files are
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_LISTEN_ADDRESS=0.0.0.0

# This is the absolute direct path to the execution file
CMD ["node", "/usr/local/lib/node_modules/n8n/bin/n8n"]

