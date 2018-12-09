FROM python:3
ADD requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt
ADD stacken /app/stacken
WORKDIR /app/stacken
RUN nikola build

FROM nginx
RUN rm /usr/share/nginx/html/*
COPY --from=0 /app/stacken/output /usr/share/nginx/html/
