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

## 参考サイト

[Docker で PHP（Laravel）+ nginx + MySQL の LEMP 環境を構築する](https://qiita.com/hinako_n/items/f15646ea548bcdc8ac6c)
