FROM debian:latest
MAINTAINER Stefan Wolf <shb256@gmail.com>
RUN apt-get update && apt-get install -y wget && wget http://homegear.eu/packages/Release.key && \
	apt-key add Release.key && \
	rm Release.key && echo 'deb http://homegear.eu/packages/Debian/ jessie/' >> /etc/apt/sources.list.d/homegear.list && \
	apt-get update && apt-get install -y ca-certificates homegear vim
EXPOSE 2001 2002 2003
CMD ["homegear","-d"]
