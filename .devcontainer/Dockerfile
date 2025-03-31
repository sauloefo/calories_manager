FROM sauloefo/devcontainer:latest

RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y \
    libjemalloc2 libvips sqlite3 \
    build-essential libyaml-dev pkg-config && \
    rm -rf /var/lib/apt/lists /var/cache/apt/archives

RUN <<EOF
cd /tmp
curl -sLO https://github.com/tailwindlabs/tailwindcss/releases/download/v4.0.17/tailwindcss-linux-arm64
chmod +x tailwindcss-linux-arm64
mv tailwindcss-linux-arm64 ~/.local/bin/tailwindcss
EOF
