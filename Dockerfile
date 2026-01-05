FROM n8nio/n8n:latest

# Force IPv4 and Port settings
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_LISTEN_ADDRESS=0.0.0.0

# Use the absolute path to start n8n
CMD ["/usr/local/bin/n8n"]

