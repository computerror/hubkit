FROM kalilinux/kali-rolling

ARG DEBIAN_FRONTEND=noninteractive

RUN apt -y update && apt -y autoremove && apt clean && apt -y install kali-linux-headless
RUN apt -y install gobuster tldr fzf iputils* dnsutils
RUN tldr -u
# COPY start.sh /
# ENTRYPOINT [ "/start.sh" ]
