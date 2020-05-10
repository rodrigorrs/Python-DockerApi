FROM python:latest

EXPOSE 8000
WORKDIR /app

USER root
COPY ./apiteste.py /app
COPY ./executavel.sh /app

ENTRYPOINT ["bash", "executavel.sh"]
