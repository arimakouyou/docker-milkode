FROM ubuntu:14.04

RUN echo "Asia/Tokyo" > /etc/timezone \
 && dpkg-reconfigure -f noninteractive tzdata \
 && sudo apt-get update \
 && sudo apt-get install -y software-properties-common \
 && sudo add-apt-repository -y universe \
 && sudo add-apt-repository -y ppa:groonga/ppa \
 && sudo apt-get update \
 && sudo apt-get upgrade -y \
 && sudo apt-get install -y git git-svn libgroonga-dev ruby-dev zlib1g-dev build-essential \
 && sudo apt-get clean \
 && sudo rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

RUN sudo gem install milkode --no-ri --no-rdoc \
 && milk init --default

EXPOSE 9292
ADD cmd.sh /cmd.sh
RUN chmod +x /cmd.sh
ENTRYPOINT ["/cmd.sh"]
