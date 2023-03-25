# Use an official Python runtime as a parent image
FROM python:3.11.2-bullseye

# Set the working directory to /app
WORKDIR /

# Copy the current directory contents into the container at /
COPY . /

RUN apt-get update && apt-get -y full-upgrade -y && apt-get install -y python3-setuptools python3-dev python3-pip build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev inetutils-ping

# Install any needed packages specified in requirements.txt
RUN pip install --upgrade pip && \
pip install -r requirements.txt

# Set the environment variable for the bot token
ENV DISCORD_BOT_APP_TOKEN=${DISCORD_BOT_APP_TOKEN}
ENV OPENAI_API_KEY=${OPENAI_API_KEY}

# Run app.py when the container launches
CMD ["python", "main.py"]