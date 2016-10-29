# セットアップ

Docker自体は事前にインストールしておいてください。

```
git clone https://github.com/aoyama-val/middleman_docker.git
cd middleman_docker

### Dockerイメージを取ってくる
docker pull aoyamaval/middleman
```

# 使い方

```
### ビルドする
./middleman.sh build
# -> ./build以下にhtmlが生成される


### middlemanサーバを起動する
./middleman.sh s
# -> ポート4567で起動するので、curl localhost:4567で確認
```


# このDockerイメージの作り方

```
cd make_image
docker build -t タグ名 .
```

タグ名の例：aoyamaval/middleman 
これで./Dockerfileからイメージが作られる。 
