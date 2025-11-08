FROM python:3.10.19

# OS dependencies
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
        ffmpeg \
        build-essential \
        python3-dev \
        libffi-dev && \
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
