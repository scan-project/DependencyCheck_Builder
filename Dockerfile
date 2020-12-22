FROM owasp/dependency-check-action:latest
USER root
RUN /usr/share/dependency-check/bin/dependency-check.sh --updateonly
ENTRYPOINT [ "/usr/share/dependency-check/bin/dependency-check.sh"]
