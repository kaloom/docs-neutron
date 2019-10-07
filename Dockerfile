FROM ubuntu:bionic 

RUN apt-get update -q && apt-get install -qy tzdata
RUN ln -fs /usr/share/zoneinfo/US/Eastern /etc/localtime && dpkg-reconfigure -f noninteractive tzdata
RUN apt-get install -qy python3-sphinx \
	make \
	latexmk \
	texlive* 
