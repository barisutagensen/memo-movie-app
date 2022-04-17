# アプリ名

Memo Movie メモムービー

# アプリケーションの概要

過去に観た映画情報をメモ、共有するアプリケーションです。ユーザー登録をすると映画情報を投稿（メモ）できるようになります。

# URL

Herokuによるデプロイ <br>
https://memo-movie-app.herokuapp.com/


# テスト用アカウント

## Basic認証
* ID: admin
* パスワード: 0125
## アカウント
* アカウント名: sample
* Email: sample@sample.com
* パスワード: sample

# 実装機能
## トップページ　
<br>

![0e53929aa47f47a5bfcfa6e9d7e6f105](https://user-images.githubusercontent.com/95076051/163720948-d6414175-ee99-44f6-be88-8192e5614401.gif)



## ユーザー登録機能
<br>
ユーザー登録をすることで映画情報を投稿（メモ）できます。
<br>

![5a9f1c6047259b1288f87a6c696e23ff](https://user-images.githubusercontent.com/95076051/163719922-c5678ba6-9b16-4380-9038-e8f2659b139e.gif)


## 映画情報投稿（メモ）機能
<br>

映画情報（タイトル、イメージ、イメージ引用元URL、引用元サイト名、メモ、出演俳優、監督、観た時期、ジャンル、個人的評価）を入力する事で投稿（メモ）できます。
![56d892047b69d97cbb1391ccb3449af8](https://user-images.githubusercontent.com/95076051/163720327-fd608840-187d-46fd-a018-5107d1534dbf.gif)

## 映画メモの詳細機能
<br>

詳細ボタンを押すと映画メモの詳細が表示されます。
![59d8344d028cb78334424e0dbb93332a](https://user-images.githubusercontent.com/95076051/163720514-8dd1c17e-0151-488f-84db-6fa77370a43c.gif)



## 映画メモの編集機能
<br>

詳細ページにある編集ボタン（投稿したユーザーのみ表示される）を押すと編集ページに遷移します。<br>
編集ページのフォームには投稿（メモ）時の情報が表示されます。
![7feb1140be0559bf95fa90466c140073](https://user-images.githubusercontent.com/95076051/163720763-05f3c9bd-a4dc-4a80-92df-1fe3f8841f03.gif)


## 映画メモの削除機能
<br>

詳細ページにある削除ボタン（メモしたユーザーのみ表示される）を押すと映画メモを削除できます。<br>
(削除ボタンを押すと削除確認のアラートが表示されます)
![2927606d82e0d0a48897b481ad5f9355](https://user-images.githubusercontent.com/95076051/163720839-777db267-1255-4d25-aa07-37874dc86475.gif)

## マイページ
<br>

ユーザーの映画鑑賞記録が確認できます。
![eb8725f37e433a3e88aab89b74844b3b](https://user-images.githubusercontent.com/95076051/163721142-db146402-6996-40d7-8395-3c53d87464fa.gif)


# ER図

![image](https://user-images.githubusercontent.com/95076051/163506659-ebfde0c8-4680-49ee-85d3-7718520b476f.png)

# アプリケーションを作成した背景

過去に観た映画を思い出せないという課題。 <br>
友人と映画の話をしていた時、オススメの映画は何？と聞かれました。そんな時パッと勧めたい映画を思い出せない事がありました。 <br>
アプリの中に観た映画を記録として残しておき、それを見返す事で思い出すきっかけになると考えました。

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

#### ActiveHash
- belongs_to :genre
- belongs_to :evaluation

#### active_storage
- has_one_attached :image

# 画面遷移図

![image](https://user-images.githubusercontent.com/95076051/163512584-18e2d0cc-733c-4146-8553-3337e0aadfc0.png)

# 環境

* ruby 2.6.5
* Rails 6.0.0
* MySQL 5.6.51
* VScode
* heroku
* AWS S3
