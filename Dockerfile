FROM fedora:latest
RUN dnf install nodejs -y
RUN npm install -g @angular/cli

