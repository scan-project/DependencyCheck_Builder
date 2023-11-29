FROM owasp/dependency-check:8.4.3
USER root
RUN /usr/share/dependency-check/bin/dependency-check.sh --updateonly
ENTRYPOINT [ "/usr/share/dependency-check/bin/dependency-check.sh"]
