FROM akosinsky/mono-latest:5.4.1.7

RUN mono --version
RUN echo "deb http://ftp.debian.org/debian jessie-backports main" | tee /etc/apt/sources.list.d/jessie-backports.list && apt update && \
apt install flatpak && flatpak install -y https://download.mono-project.com/repo/monodevelop.flatpakref
