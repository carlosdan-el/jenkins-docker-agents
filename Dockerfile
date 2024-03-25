FROM jenkins/agent
USER root
WORKDIR /app
COPY . /app
RUN apt update
RUN apt install wget
RUN wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN rm packages-microsoft-prod.deb
RUN apt update
RUN apt install -y dotnet-sdk-8.0
