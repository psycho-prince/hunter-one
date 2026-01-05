FROM n8nio/n8n:latest

# Force IPv4 binding to prevent the "Starting up" freeze
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_LISTEN_ADDRESS=0.0.0.0

USER root
RUN apk add --no-cache curl
USER node

EXPOSE 5678

CMD ["n8n"]

