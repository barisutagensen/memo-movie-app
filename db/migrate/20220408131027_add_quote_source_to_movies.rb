class AddQuoteSourceToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :quote_source, :string, null: false
    add_column :movies, :excerpt_site_name, :string, null: false
  end
end
