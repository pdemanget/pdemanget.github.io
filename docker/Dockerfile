FROM jenkins:alpine
ENV DOCKERVERSION=17.12.0-ce
RUN curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-17.12.0-ce.tgz \
  && mv docker-17.12.0-ce.tgz docker.tgz \
  && tar xzvf docker.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker.tgz
  
  
EXPOSE 8080

CMD ["/usr/bin/supervisord"]


