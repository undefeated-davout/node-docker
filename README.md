# 使い方

## Dockerコマンド

### 以下、cloneしたディレクトリ直下にてコマンド実行

```bash
docker-compose build
```

### 実行

```bash
docker-compose up -d
```

### コンテナ内へログイン

```bash
docker exec -it node-docker.app /bin/bash --login
```

## 各種設定、インストールなど

### 日本語設定

```bash
localectl set-locale LANG=ja_JP.UTF-8
```

### nodenvインストール

```bash
# anyenv初期処理
. ~/.bash_profile
anyenv install --init
# Do you want to checkout ? [y/N]: y
# nodenvインストール
anyenv install nodenv
. ~/.bash_profile

# 使用可能nodeバージョン確認
nodenv install -l
# グローバルnodeバージョン設定
nodenv install 14.17.0 && nodenv global 14.17.0
# カレントディレクトリnodeバージョン設定
# 任意のディレクトリへ移動して
nodenv install 12.20.2 && nodenv local 12.20.2

# インストールされた各バージョンの確認
anyenv versions

# yarn インストール
npm install -g yarn
```
