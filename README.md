# 使い方

## Dockerコマンド

### 以下、cloneしたディレクトリ直下にてコマンド実行

```$xslt
docker-compose build
```

### 実行

```$xslt
docker-compose up -d
```

### コンテナ内へログイン

```$xslt
docker exec -it node-docker.app /bin/bash
```

## 各種設定、インストールなど

### 日本語設定

```$xslt
localectl set-locale LANG=ja_JP.UTF-8
```

### nodenvインストール

```$xslt
# anyenv初期処理
. ~/.bash_profile
anyenv install --init
# Do you want to checkout ? [y/N]: y
# nodenvインストール
anyenv install nodenv
. ~/.bash_profile

# 使用可能nodeバージョン確認
nodenv install -l
# nodeインストール
nodenv install 14.15.4
# グローバルnodeバージョン設定
nodenv global 14.15.4
# カレントディレクトリnodeバージョン設定
nodenv install 12.20.1
nodenv local 12.20.1

# インストールされた各バージョンの確認
anyenv versions
```
