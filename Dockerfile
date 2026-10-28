FROM python:3.11-slim
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY . /app
RUN chmod +x entrypoint.sh update_readme.sh;
RUN chmod +x entrypoint.sh update_readme.sh
ENTRYPOINT ["/app/entrypoint.sh"]
