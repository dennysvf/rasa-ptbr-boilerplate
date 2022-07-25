<<<<<<< HEAD
FROM rasa/rasa:3.2.0-full
=======
FROM rasa/rasa:3.0.8
>>>>>>> 0f41927e08216d70ca7071901b26f2b747d99888

WORKDIR /bot
COPY ./bot /bot
COPY ./modules /modules

USER root
RUN apt install make
USER 1001

RUN export PYTHONPATH=/bot/components/:$PYTHONPATH

ENTRYPOINT []
CMD []
