FROM securego/gosec:2.22.4

RUN apk add --no-cache python3 py3-pip

COPY entrypoint.sh /entrypoint.sh
COPY process.py /process.py

ENTRYPOINT ["/entrypoint.sh"]
