FROM centos:7.9.2009

RUN yum install -y gcc gdb make zip unzip wget git ctags

RUN wget https://github.com/mbund/cse2421-linter/releases/download/c279210/cse2421-linter-x86_64-unknown-linux-musl -O /usr/local/bin/cse2421-linter
RUN chmod +x /usr/local/bin/cse2421-linter

RUN wget https://github.com/mbund/canvas-cli/releases/download/720f35a/canvas-cli-x86_64-unknown-linux-musl -O /usr/local/bin/canvas-cli
RUN chmod +x /usr/local/bin/canvas-cli

WORKDIR /root
