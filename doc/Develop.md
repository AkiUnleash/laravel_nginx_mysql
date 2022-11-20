# 開発環境準備

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

#### DB の設定

src/.env

```
DB_CONNECTION=mysql
DB_HOST=db
DB_PORT=3306
DB_DATABASE=database
DB_USERNAME=user
DB_PASSWORD=password
```

#### Error ページの取得

```
php artisan vendor:publish --tag=laravel-errors
```

#### pagination の表示

```
php artisan vendor:publish --tag=laravel-pagination
```

## JetStream のインストール

https://readouble.com/jetstream/1.0/ja/installation.html

### Jetstream の隠し View フォルダの表示

```
php artisan vendor:publish --tag=jetstream-views
```
