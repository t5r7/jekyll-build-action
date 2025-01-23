# This image is cached on the Github Actions VM, so it drastically reduces build time
FROM jekyll/builder:4
USER root

# If we ever need anything
# RUN apk add --no-cache <apk>

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
