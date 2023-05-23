FROM jakejarvis/hugo-extended
RUN  apk add doas; \
     adduser -u 1001 -D jenkins;\
     addgroup jenkins wheel;\
     echo 'permit :wheel as root' > /etc/doas.d/doas.conf &&\
     apk update && apk upgrade && apk add --update nodejs npm
USER jenkins
RUN mkdir /home/jenkins/web-app
WORKDIR /home/jenkins/web-app
COPY --chown=jenkins:jenkins ./web-app .
RUN npm i && ls -la
