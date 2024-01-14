FROM centos:7.9.2009

RUN yum install -y gcc gdb make zip unzip wget git

RUN wget https://github.com/mbund/cse2421-linter/releases/download/c279210/cse2421-linter-x86_64-unknown-linux-musl -O /usr/local/bin/cse2421-linter
RUN chmod +x /usr/local/bin/cse2421-linter

WORKDIR /root

# RUN useradd -m -s /bin/bash user

# USER user
# WORKDIR /home/user
