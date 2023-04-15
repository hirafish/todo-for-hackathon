# Windows 環境の場合

Gemfile の最後の行のコメントアウトを外す必要があります

# 環境構築の方法

```
$ cd todo-for-hackathon
$ bundle _2.3.14_ config set --local without 'production'
$ bundle _2.3.14_ install
```

# ローカルサーバーの立ち上げかた

```
$ cd todo-for-hackathon
$ rails server
```

`[-p {3000}]`でポート指定もできます
