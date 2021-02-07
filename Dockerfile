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

# node.js install
RUN curl -sL https://rpm.nodesource.com/setup_14.x | sudo -E bash - \
  && yum install -y nodejs \
  && rm -rf /var/cache/yum/* \
  && yum clean all

# work directory
WORKDIR /share

CMD ["/sbin/init"]
