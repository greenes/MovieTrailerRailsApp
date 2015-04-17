class Movie < ActiveRecord::Base
  validates :title, :year, :poster_url, :omdb_id, :presence => true

end
