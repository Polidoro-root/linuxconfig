FROM archlinux:latest

RUN pacman -Syu --noconfirm \
  && pacman -S vim openssh ansible python sudo --noconfirm \
  && echo 'root:123' | chpasswd \
  && sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config \
  && sed -i 's/#Port 22/Port 22/' /etc/ssh/sshd_config \
  && sed -i 's/#PubkeyAuthentication/PubkeyAuthentication/' /etc/ssh/sshd_config \
  && sed -i 's/#PasswordAuthentication/PasswordAuthentication/' /etc/ssh/sshd_config

CMD ["/usr/sbin/init"]
