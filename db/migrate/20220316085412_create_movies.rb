class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string     :title,         null: false
      t.text       :memo,          null: false
      t.string     :actor,         null: false
      t.string     :director,      null: false
      t.integer    :genre_id,      null: false
      t.integer    :evaluation_id, null: false
      t.references :user,          null: false, foreign_key: true
      t.timestamps
    end
  end
end
