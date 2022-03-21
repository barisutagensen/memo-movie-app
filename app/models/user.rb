class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #  moviesテーブルとのアソシエーション
  has_many :movies

  validates :nickname, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 10 }
end
