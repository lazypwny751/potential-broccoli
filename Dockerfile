FROM ubuntu

WORKDIR /opt/potential-broccoli
COPY . .

RUN [ "apt" "update" ]
RUN [ "apt" "install" "-y" "bpftrace" "make" "gawk" "coreutils" "bash" ]
RUN [ "make" ]

ENTRYPOINT [ "potential-broccoli" ]
CMD [ "run" ]
