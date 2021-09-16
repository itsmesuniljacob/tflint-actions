FROM alpine:3.12.0
RUN apk add --update --no-cache bash curl
RUN curl -L "$(curl -s https://api.github.com/repos/accurics/terrascan/releases/latest | grep -o -E "https://.+?_Linux_x86_64.tar.gz")" > terrascan.tar.gz
RUN tar -xf terrascan.tar.gz terrascan && rm terrascan.tar.gz
RUN install terrascan /usr/local/bin && rm terrascan
ENTRYPOINT ["terrascan"]