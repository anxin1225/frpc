FROM alpine:3.15
WORKDIR /app
RUN wget https://github.com/fatedier/frp/releases/download/v0.39.1/frp_0.39.1_linux_amd64.tar.gz -O frp.tar.gz \
    && tar -zxvf frp.tar.gz -C /app \
    && rm -rf frp.tar.gz \
    && cp /app/frp_0.39.1_linux_amd64/frpc* /app \
    && rm -rf /app/frp_0.39.1_linux_amd64

ENTRYPOINT ["./frpc", "-c", "./frpc.ini"]
