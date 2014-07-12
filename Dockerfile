FROM ubuntu:lucid
MAINTAINER Alex Lee <lu.lee05@gmail.com>

RUN apt-get -q update

# Install packages that JAE has provided
RUN apt-get -q -y install curl wget gcc g++ make unzip bzip2 automake autoconf git

# Install packages need for compiling R runtime
RUN apt-get -q -y install gfortran libreadline-dev libx11-dev libxt-dev 

# Install packages need for compiling R runtime
RUN apt-get -q -y install zlib1g-dev libssl-dev libpam0g-dev

ADD build build
CMD ./build
