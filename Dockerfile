FROM python:3.10-slim-bookworm

RUN apt update && apt upgrade -y && apt install -y git

COPY requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

CMD ["python", "bot.py"]
