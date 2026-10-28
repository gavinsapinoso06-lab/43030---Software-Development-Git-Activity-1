FROM python:3.11-slim

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . /app
RUN chmod +x .github/scripts/entrypoint.sh .github/scripts/update_readme.sh
ENTRYPOINT ["/.github/scripts/entrypoint.sh"]
