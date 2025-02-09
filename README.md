# discord-typecast-gpt-chatbot

[![Docker Image CI](https://github.com/CyberSentinels/discord-typecast-gpt-chatbot/actions/workflows/docker-image.yml/badge.svg)](https://github.com/CyberSentinels/discord-typecast-gpt-chatbot/actions/workflows/docker-image.yml) [DockerHub](https://hub.docker.com/r/simeononsecurity/discord-typecast-gpt-chatbot)

This bot is a Discord-based support agent. It provides helpful responses to user queries, assists with server-related questions, and directs users to relevant resources. The bot is friendly, knowledgeable, and maintains a positive environment. It can also share opinions, preferences, and recommendations related to various topics, creating engaging and informative interactions with users.

See the Bot in Action!
<!-- Website -->
<a href="https://cybersentinels.org">
<img src="https://img.shields.io/badge/Website-Visit-<COLOR>?color=green" alt="Website">
</a>
<a href="https://discord.gg/CYVe2CyrXk">
<img src="https://img.shields.io/discord/1077773186772521011?label=Cyber%20Sentinels%20Discord&logo=discord&logoColor=white" alt="Discord">
</a>

## How to run the bot
### Using docker
```bash
docker run -td --name cyberchatbot -e DISCORD_BOT_APP_TOKEN="INSERT YOUR BOT TOKEN HERE" -e OPENAI_API_KEY="INSERT YOUR OPENAI API KEY HERE" simeononsecurity/discord-typecast-gpt-chatbot:latest
```
### How to run the bot manually using python

To get started with running this repository, you need to perform the following steps:

1. Clone this repository and change into product root

```bash
git clone URL
cd repo_name
```
2. create an `.env` file in the project root (it will be `.gitignored`) and paste your discord bot token and openai token:

```env
DISCORD_BOT_APP_TOKEN=PASTE_DISCORD_TOKEN_HERE
OPENAI_API_KEY=PASTE_OPENAI_API_TOKEN_HERE
```

3. Create a new virtual environment using `venv`:
```bash
python3 -m venv venv
```

4. Activate the virtual environment:
```bash
source venv/bin/activate
```

5. Install the dependencies listed in `requirements.txt`:
   
```bash
pip install -r requirements.txt
```

6. If you install new dependencies with `pip install`, be sure to regenerate requirements.txt with:

```bash
pip freeze > requirements.txt
```
#### How to fix locales issue
```bash
sudo apt-get install locales -y
sudo locale-gen en_US.UTF-8 en_CA.UTF-8
sudo update-locale
```

## Architecture

```text
./
project root

bot/
discord bot's source

bot/main.py:
This is the main entry point for your application

bot/controllers/
This directory contains code that controls the main program and provides inputs into services

bot/services/
This directory contains code that do small, specific tasks

requirements.txt:
This file lists the dependencies required for your application to run
```
