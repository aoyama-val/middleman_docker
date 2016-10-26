# 使い方

```
### Dockerイメージを取ってくる
docker pull aoyamaval/middleman


### ビルドする
./build.sh
# -> ./build以下にhtmlが生成される


### middlemanサーバを起動する
./start.sh
# -> ポート4567で起動するので、curl localhost:4567で確認
```


# このDockerイメージの作り方

```
docker build -t タグ名 .
```

タグ名の例：aoyamaval/middleman 
これで./Dockerfileからイメージが作られる。 
