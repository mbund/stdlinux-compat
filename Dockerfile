FROM almalinux:8.10-20240723

RUN yum install -y gcc gdb make zip unzip wget git ctags valgrind

RUN wget https://github.com/mbund/cse2421-linter/releases/download/c279210/cse2421-linter-x86_64-unknown-linux-musl -O /usr/local/bin/cse2421-linter
RUN chmod +x /usr/local/bin/cse2421-linter

RUN wget https://github.com/mbund/canvas-cli/releases/download/720f35a/canvas-cli-x86_64-unknown-linux-musl -O /usr/local/bin/canvas-cli
RUN chmod +x /usr/local/bin/canvas-cli

WORKDIR /root
