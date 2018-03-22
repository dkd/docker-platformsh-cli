FROM alpine:latest

LABEL maintainer.first="Nicolai Reuschling 'nicolai.reuschling@dkd.de'"

RUN mkdir /platformsh-cli
COPY ./platformsh-cli/ /platformsh-cli/

ENTRYPOINT ["/usr/bin/tail", "-f", "/dev/null"]
