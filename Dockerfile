FROM python:3
ADD nikola-requirements.txt /app/nikola-requirements.txt
RUN pip install -r /app/nikola-requirements.txt
ADD stacken /app/stacken
WORKDIR /app/stacken
RUN nikola build

FROM nginx
RUN rm /usr/share/nginx/html/*
COPY --from=0 /app/stacken/output /usr/share/nginx/html/
