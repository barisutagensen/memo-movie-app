class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'アクション' },
    { id: 3, name: 'SF' },
    { id: 4, name: 'ミステリー・サスペンス' },
    { id: 5, name: 'ドラマ' },
    { id: 6, name: 'コメディ' },
    { id: 7, name: '恋愛' },
    { id: 8, name: 'アニメーション' },
    { id: 9, name: 'ホラー' },
    { id: 10, name: '戦争' },
    { id: 11, name: 'ドキュメンタリー' },
    { id: 12, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :movies
end