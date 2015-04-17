class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.belongs_to :favorite
      t.string :title
      t.string :year
      t.string :poster_url
      t.string :omdb_id

    end
  end
end
