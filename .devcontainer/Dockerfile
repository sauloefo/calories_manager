FROM sauloefo/devcontainer:latest

RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y \
    libjemalloc2 libvips sqlite3 \
    build-essential libyaml-dev pkg-config && \
    rm -rf /var/lib/apt/lists /var/cache/apt/archives
