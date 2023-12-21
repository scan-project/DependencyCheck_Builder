FROM owasp/dependency-check:latest
USER root
RUN /usr/share/dependency-check/bin/dependency-check.sh --updateonly --nvdDatafeed=https://dependency-check.github.io/DependencyCheck_Builder/nvd_cache/nvdcve-{0}.json.gz
ENTRYPOINT [ "/usr/share/dependency-check/bin/dependency-check.sh"]
