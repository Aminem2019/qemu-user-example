FROM ubuntu:22.04
COPY . /app
RUN apt update && apt install -y gcc-aarch64-linux-gnu make qemu-user
WORKDIR app
CMD /bin/bash
