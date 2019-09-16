#!/bin/bash
set -e

# bundle check || bundle install --binstubs="$BUNDLE_BIN"

# bundle exec rake db:create

# bundle exec rake db:migrate

# Remove a potentially pre-existing server.pid for Rails.
# rm -f /srv/rails-app/tmp/pids/server.pid

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
