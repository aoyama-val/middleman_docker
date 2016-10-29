#!/bin/sh

# dockerコンテナを使ってmiddlemanを実行するスクリプト

# -it 端末を割り付ける
# -v  ホストのディレクトリをコンテナ内にマウントする
# -w  コンテナのカレントディレクトリを指定する
# aoyamaval/middleman4  : イメージの名前
# bundle exec middleman "$@" : コンテナ内で実行するコマンド

docker run \
  -it \
  -v $PWD/src:/middleman/src \
  -w /middleman/src \
  -p 4567:4567 \
  aoyamaval/middleman4 \
  bundle exec middleman "$@"

# コンテナ内で生成されたファイルはオーナーがrootになるので、自分に変更しておく
sudo chown "$USER" -R .
