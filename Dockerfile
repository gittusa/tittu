FROM python:3.10.5-slim-buster


WORKDIR .
RUN apt -qq update && apt -qq install -y git wget pv jq python3-dev ffmpeg mediainfo
COPY . .
RUN pip install pyrogram==1.4.16 tgcrypto requests pyromod yt-dlp ffmpeg aiohttp aiofiles asyncio pycurl humanize
RUN apt install ffmpeg

CMD ["python3", "main.py"]
