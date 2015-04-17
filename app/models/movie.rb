class Movie < ActiveRecord::Base
  belongs_to :favorite
  validates :title, :year, :poster_url, :omdb_id, :presence => true

end
