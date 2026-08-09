FROM ghcr.io/actions/jekyll-build-pages:latest
USER root

# If we ever need anything
# RUN apk add --no-cache <apk>

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
