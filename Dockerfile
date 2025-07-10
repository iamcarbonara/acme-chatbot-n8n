FROM n8nio/n8n:latest

# Copia i workflow inclusi nel repository
COPY ./workflows /workflows

# Espone la porta predefinita di n8n
EXPOSE 5678

CMD ["n8n"]
