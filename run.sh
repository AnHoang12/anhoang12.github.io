#!/bin/bash

case "$1" in
  build)
    docker compose build
    ;;
  serve)
    docker compose up
    ;;
  stop)
    docker compose down
    ;;
  shell)
    docker compose run --rm jekyll bash
    ;;
  install)
    docker compose run --rm jekyll bundle install
    ;;
  *)
    echo "Usage: ./run.sh {build|serve|stop|shell|install}"
    echo ""
    echo "  build   - Build Docker image"
    echo "  serve   - Start Jekyll server (http://localhost:4000)"
    echo "  stop    - Stop containers"
    echo "  shell   - Open bash inside container"
    echo "  install - Run bundle install"
    ;;
esac
