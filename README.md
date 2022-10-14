# Laravel + nginx + mysql

## 手順

### .env の追加

```
WEB_PORT=8081
DB_NAME=database
DB_USER=user
DB_PASSWORD=password
DB_ROOT_PASSWORD=password
```

### Docker の起動

```
docker-compose up -d
```

### app にログイン後、laravel をインストール

```
# イメージに入る。
docker-compose exec app bash

# 最新バージョンのインストール
composer create-project laravel/laravel .
```

## その他コマンド

```
# DBログインに入る
docker-compose exec db bash
```

## 参考サイト

[Docker で PHP（Laravel）+ nginx + MySQL の LEMP 環境を構築する](https://qiita.com/hinako_n/items/f15646ea548bcdc8ac6c)
