#!/usr/bin/env bash
set -euo pipefail

cd "${GITHUB_WORKSPACE:-/github/workspace}"
[[ -f Gemfile ]] || { echo "Gemfile not found in ${PWD}"; exit 1; }

bundle config set path "${BUNDLE_PATH:-vendor/bundle}"
bundle install
bundle exec jekyll build
