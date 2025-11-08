FROM python:3.11-slim-bookworm

# OS dependencies
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y ffmpeg && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# App dependencies
COPY requirements.txt /app/
WORKDIR /app
RUN pip install -r requirements.txt

# App code
ADD . /app/
WORKDIR /app

ENTRYPOINT ["python", "-m", "bot.run"]
