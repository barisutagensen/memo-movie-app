# アプリ名

Memo Movie メモムービー

# アプリケーションの概要

過去に観た映画情報を記録、共有するアプリケーションです。ユーザー登録をすると映画情報を投稿記録できるようになります。

# URL

https://memo-movie-app.herokuapp.com/


# テスト用アカウント

## Basic認証
* ID: admin
* パスワード: 0125
## アカウント
* アカウント名: sample
* Email: sample@sample.com
* パスワード: sample






# ER図

![image](https://user-images.githubusercontent.com/95076051/163506659-ebfde0c8-4680-49ee-85d3-7718520b476f.png)

# アプリケーションを作成した背景

映画鑑賞を趣味としている人の課題です。
友人との会話の中でオススメの映画は何と聞かれることがあったが、パッと勧めたい映画が思い出せないことがあった。
アプリの中に映画情報を記録として残しておくことで、思い出すきっかけになると考えました。

# 洗い出した要件

以下リンクのスプレッドシートにまとめました。
https://docs.google.com/spreadsheets/d/1EYzpcuWZLgwcPeUVKsMA89DoCMAVjGHamVgUvnjkX7M/edit#gid=1652046481


# テーブル設計

## usersテーブル

| Column                 | Type    | Options                   |
| -----------------------| ------- | --------------------------|
| nickname               | string  | null: false, unique: true |
| email                  | string  | null: false               |
| encrypted_password     | string  | null: false               |
<!-- | genre_id               | integer | null: false | -->

### Association
- has_many :movies

## moviesテーブル

| Column             | Type       | Options                        |
| ------------------ | -----------| ------------------------------ |
| title              | string     | null: false                    |
| quote_source       | string     | null: false                    |
| excerpt_site_name  | string     | null: false                    |
| memo               | text       | null: false                    |
| actor              | string     | null: false                    |
| director           | string     | null: false                    |
| viewing_timing     | string     | null: false                    |
| genre_id           | integer    | null: false                    |
| evaluation_id      | integer    | null: false                    |
| user               | references | null: false, foreign_key: true |

### Association
- belongs_to :user

# 画面遷移図

![image](https://user-images.githubusercontent.com/95076051/163512584-18e2d0cc-733c-4146-8553-3337e0aadfc0.png)

# 環境

* ruby 2.6.5
* Rails 6.0.0
* MySQL 5.6.51

