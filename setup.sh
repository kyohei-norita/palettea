#!/bin/bash
# スクリプトが存在するディレクトリに移動
DIR=$(dirname "$0")
cd "$DIR" || exit

mkdir workspace
cd workspace || exit
git clone git@github.com:kyohei-norita/palettea-api.git
git clone git@github.com:kyohei-norita/palettea-web.git
git clone git@github.com:kyohei-norita/palettea-flyway.git
cd ../
. flyway-migrate.sh
. start.sh