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

### npmインストール

```$xslt
# init
npm init
# インストール
npm install \
  typescript \
  ts-node \
  ts-node-dev
```

### ts-node-dev

```$xslt
ts-node-dev --respawn sample.ts
```
