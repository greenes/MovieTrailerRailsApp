class Favorite < ActiveRecord::Base
  has_many :movies
  validates :title, :actor_1, :actor_2, :presence => true


  def self.all
    

  end


end
