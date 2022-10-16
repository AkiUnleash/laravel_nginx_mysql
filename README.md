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

### インストール後の設定

#### タームゾーンと言語の設定
```
# config/app.phpにて、以下２つを修正
'timezone' => 'Asia/Tokyo',
'locale' => 'ja',
```

#### デバックバーのインストール
```
composer require barryvdh/laravel-debugbar

# .envにて、On/Offを切り替え
APP_DEBUG=true
```

#### 言語の設定
```

## langフォルダにjaディレクトリを作成
## 以下４つのファイルを作成する。
## 公式ページを参照 https://readouble.com/laravel/9.x/ja

- auth.php
- pagination.php
- password.php
- validation.php
```

#### DBの設定
src/.env
```
DB_CONNECTION=mysql
DB_HOST=db
DB_PORT=3306
DB_DATABASE=database
DB_USERNAME=user
DB_PASSWORD=password
```


#### Errorページの取得
```
php artisan vendor:publish --tag=laravel-errors
```

#### paginationの表示
```
php artisan vendor:publish --tag=laravel-pagination
```

## JetStreamのインストール

https://readouble.com/jetstream/1.0/ja/installation.html

### Jetstreamの隠しViewフォルダの表示
```
php artisan vendor:publish --tag=jetstream-views
```


## その他コマンド

```
# DBログインに入る
docker-compose exec db bash

```

```
# キャッシュの削除方法
php artisan cache:clear
php artisan config:clear
artisan route:clear
```


## 参考サイト

[Docker で PHP（Laravel）+ nginx + MySQL の LEMP 環境を構築する](https://qiita.com/hinako_n/items/f15646ea548bcdc8ac6c)
