FROM ruby:4-trixie

USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    rsync \
    openssh-client \
    ca-certificates \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /github/workspace

ENV BUNDLE_PATH=/github/workspace/vendor/bundle \
    BUNDLE_JOBS=4 \
    BUNDLE_RETRY=3

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
