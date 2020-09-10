FROM python:3.8-slim
MAINTAINER varunkumar032@gmail.com
COPY ./* /pavlov-bot
WORKDIR /pavlov-bot
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "-v", "--junitxml=reports/result.xml"]CMD tail -f /dev/null
