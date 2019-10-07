# Repitope Dockerfile

# Pull base image.
FROM centos:7

# Install dep-packages

RUN yum install -y epel-release \
    && yum install -y R openssl-devel libcurl-devel libxml2-devel gsl-devel cairo-devel \
    && mkdir -p /install_script /usr/share/doc/R-3.6.0/html/

# Install R packages

COPY install.r /install_script/install.r

RUN Rscript /install_script/install.r

# Define working directory.
WORKDIR /

# Define default command.
CMD /bin/bash