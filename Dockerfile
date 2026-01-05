FROM n8nio/n8n:latest

# We skip installing curl to avoid 'exit code 127'
# These variables are the most important part for Render
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_LISTEN_ADDRESS=0.0.0.0

EXPOSE 5678

CMD ["n8n"]

