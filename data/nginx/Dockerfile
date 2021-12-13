FROM nginx:latest

COPY entrypoint.sh entrypoint.sh 
RUN chmod +x entrypoint.sh 

RUN apt update && \
    apt install python3 python3-venv libaugeas0 -y && \
    python3 -m venv /opt/certbot/ && \
    /opt/certbot/bin/pip install --upgrade pip && \
    /opt/certbot/bin/pip install certbot certbot-nginx && \
    ln -s /opt/certbot/bin/certbot /usr/bin/certbot && \
    /opt/certbot/bin/pip install certbot-dns-route53 