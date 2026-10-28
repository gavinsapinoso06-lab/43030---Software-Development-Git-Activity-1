FROM python:3.9-slim

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . /app

RUN sed -i 's/\r$//' .github/scripts/*.sh && \
    chmod +x .github/scripts/entrypoint.sh .github/scripts/update_readme.sh

ENTRYPOINT ["sh", "/app/.github/scripts/entrypoint.sh"]
