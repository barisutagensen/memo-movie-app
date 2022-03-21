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
