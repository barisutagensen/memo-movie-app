class Movie < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  # テーブルとのアソシエーション
  belongs_to :user

  # アクティブハッシュとのアソシエーション
  belongs_to :genre
  belongs_to :evaluation

  # active_storageとのアソシエーション
  has_one_attached :image

  with_options presence: true do
    validates :title
    validates :image
    validates :memo
    validates :actor
    validates :director
    validates :genre_id
    validates :evaluation_id
    validates :user_id
  end

  # ジャンルの選択が「--」のときは保存できない
  with_options numericality: { other_than: 1 , message: "can't be blank"} do
    validates :genre_id
    validates :evaluation_id
  end
end
