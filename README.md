# ruby-getting-started

A barebones Rails app, which can easily be deployed to Heroku.

This application support the [Getting Started with Ruby on Heroku](https://devcenter.heroku.com/articles/getting-started-with-ruby) article - check it out.

## Running Locally

Make sure you have Ruby installed.  Also, install the [Heroku Toolbelt](https://toolbelt.heroku.com/).

```sh
$ git clone git@github.com:heroku/ruby-getting-started.git
$ cd ruby-getting-started
$ bundle install
$ rake db:create db:migrate
$ foreman start web
```

Your app should now be running on [localhost:5000](http://localhost:5000/).

## Deploying to Heroku

```sh
$ heroku create
$ git push heroku master
$ heroku run rake db:migrate
$ heroku open
```

## Documentation

For more information about using Ruby on Heroku, see these Dev Center articles:

- [Ruby on Heroku](https://devcenter.heroku.com/categories/ruby)


# heroku_pushnotification_sample
This is sample of heroku-push-notification as iOS and Android

# what is purpose
I want to develop push-notification on Heroku.
so i will use Zefo Push?.It is plugin of push notification which heroku has.

## Reference of smp-push-notification for iOS and Android
* https://devcenter.heroku.com/articles/zeropush
* http://blog.morizotter.com/2014/07/20/heroku-rails-push-to-ios/

## Impotant thing
Heroku can use push notification.But Heroku has utility plugin for push notification,ZeroPush.

## How to set for Zero Push

I'm referencing the below link.
* https://zeropush.com/documentation/generating_certificates#development
* https://zeropush.com/documentation/readme/ZeroPush-iOS

## ZeroPushの特徴
* Push通知を楽に実装できるプラグイン
* サーバサイドはPHP,Ruby,Pythonが使える
* 通常のAPNSより、設定することが少ない。（証明書の作成も含めて）
* Android、iOSと複数アプリケーション同時にセット可能みたい

### 開発イメージ
* バッチは以下を参考に作成
* http://qiita.com/3yatsu/items/416411c0a8f696dbf99e

## ZeroPush以外の方法
http://blog.morizotter.com/2014/07/20/heroku-rails-push-to-ios/
あとで試す

## To run push batch on Heroku
```
heroku run rails runner -e development batch/test_notification.rb
```
* heroku環境で動かす際は、-eオプション使わないと、デフォルトproductionを読みに行く

## what is heroku dyno
* heroku上のアプリケーションを動かすスペースみたいなもの
１スペースに割り当てられるスペックは決まっていて、追加することも可能です
* http://thinkit.co.jp/story/2011/03/23/2060?page=0,1

## 参考
* https://devcenter.heroku.com/articles/zeropush

