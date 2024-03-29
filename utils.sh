#!/usr/bin/env bash
set -euo pipefail

case "$1" in
install)
    npm install -g prettier gitbook-cli
    ;;

build)
    # prettier --write --ignore-unknown .

    rm -fr {_book,Online-Blog} 2 &>/dev/null
    gitbook build
    find _book -type f -name "*.html" | while read filepath; do
        sed -i '' 's+Published with GitBook+晚知胜于无知+g' "${filepath}"
    done
    rm _book/utils.sh
    mv _book Online-Blog

    prettier --write Online-Blog/index.html
    prettier --write Online-Blog/posts/*/*.html
    ;;

build:automated)
    bash ./utils.sh build

    git add .
    git commit -a -m "Modify: build automated"
    git checkout posts

    mv posts posts.deprecated
    cp -rf Online-Blog/* .

    python3 -m http.server --directory . 4000
    ;;

serve)
    # pm2 serve --port 4000 --no-daemon Online-Blog
    python3 -m http.server --directory Online-Blog 4000
    ;;

*)
    echo "./utils.sh install"
    echo "./utils.sh build"
    ;;
esac
