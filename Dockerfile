FROM centos:8

# yum install
RUN yum update -y \
  && yum groupinstall -y "Development tools" \
  && yum install -y \
  cmake \
  curl \
  gcc \
  gcc-c++ \
  git \
  langpacks-ja \
  make \
  sudo \
  tmux \
  unzip \
  wget \
  && rm -rf /var/cache/yum/* \
  && yum clean all

# alias
RUN echo "alias ll='ls -la -F'" >> ~/.bashrc

# git tab completion
RUN echo "source /usr/share/doc/git/contrib/completion/git-completion.bash" >> ~/.bashrc

# anyenv install
RUN git clone https://github.com/anyenv/anyenv ~/.anyenv \
  && echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.bash_profile \
  && echo 'eval "$(anyenv init -)"' >> ~/.bash_profile

# anyenv update, anyenv-update install
RUN mkdir -p ~/.anyenv/plugins \
  && git clone https://github.com/znz/anyenv-update.git ~/.anyenv/plugins/anyenv-update \
  && git clone https://github.com/znz/anyenv-git.git ~/.anyenv/plugins/anyenv-git

# work directory
WORKDIR /share

CMD ["/sbin/init"]
