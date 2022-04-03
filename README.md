# アプリ名

Memo Movie メモムービー

# アプリケーションの概要

過去に観た映画情報を記録、共有するアプリケーションです。ユーザー登録をすると映画情報を登録できるようになります。

# ER図


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

| Column        | Type       | Options                        |
| --------------| -----------| ------------------------------ |
| title         | string     | null: false                    |
| memo          | text       | null: false                    |
| actor         | string     | null: false                    |
| director      | string     | null: false                    |
| genre_id      | integer    | null: false                    |
| evaluation_id | integer    | null: false                    |
| user          | references | null: false, foreign_key: true |

### Association
- belongs_to :user

# 環境

* ruby 2.6.5
* Rails 6.0.0
* MySQL 5.6.51

