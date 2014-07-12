FROM cpuguy83/debian:jessie
ADD sources.list /etc/apt/sources.list
RUN apt-get update && apt-get install -y --no-install-recommends vim bzr git mercurial zsh
ADD startup.sh /usr/bin/start_container.sh
ENTRYPOINT ["/usr/bin/start_container.sh"]
CMD ["zsh"]
