#!/bin/bash
# スクリプトが存在するディレクトリに移動
DIR=$(dirname "$0")
cd "$DIR" || exit

cd ./workspace/palettea-api || exit
git pull

cd ../palettea-web || exit
git pull

cd ../palettea-flyway || exit
git pull
