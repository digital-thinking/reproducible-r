ARG VERSION="4.1.0"
FROM rocker/r-ver:$VERSION as base

# Install needed packages and git
RUN apt-get update  \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install \
    libgit2-dev \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    libxt-dev 
	
RUN apt-get -y install git

# checkout our git repository
WORKDIR /workdir
RUN git clone https://github.com/digital-thinking/spark-titanic.git .
# install checkpoint library
RUN Rscript -e "install.packages('checkpoint')"
#start R script
CMD sleep infinity