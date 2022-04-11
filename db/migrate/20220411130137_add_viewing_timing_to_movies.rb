class AddViewingTimingToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :viewing_timing, :string, null: false
  end
end
