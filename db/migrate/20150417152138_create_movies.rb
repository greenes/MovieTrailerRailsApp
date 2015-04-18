class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.belongs_to :user
      t.string :title
      t.string :year
      t.string :poster_url
      t.string :imdb_id

    end
  end
end
