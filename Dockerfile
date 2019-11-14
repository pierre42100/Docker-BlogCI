# Docker file used to build the project in CI

FROM ubuntu:bionic

# Install NodeJS
RUN apt update && \
	apt install -y curl && \
	curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
	apt install -y nodejs && \
	apt clean

# Install GCC & make
RUN apt install -y g++ make

# Install Angular CLI
RUN npm install --global @angular/cli

# Install GIT (useful for tests)
RUN apt install -y git
