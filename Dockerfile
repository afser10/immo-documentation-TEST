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
<<<<<<< HEAD
RUN npm i && ls -la
=======
RUN npm i && ls -la 
>>>>>>> 4e6b1e6c2d86dfb2752ca8abf012cbcb3d219658
