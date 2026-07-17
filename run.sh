#!/bin/bash

case "$1" in
  install)
    bundle install
    ;;
  serve)
    bundle exec jekyll serve --host 0.0.0.0 --livereload
    ;;
  build)
    bundle exec jekyll build
    ;;
  clean)
    bundle exec jekyll clean
    ;;
  *)
    echo "Usage: ./run.sh {install|serve|build|clean}"
    echo ""
    echo "  install - Cài dependencies (chạy lần đầu)"
    echo "  serve   - Chạy server tại http://localhost:4000"
    echo "  build   - Build static site"
    echo "  clean   - Xóa file generated"
    ;;
esac
