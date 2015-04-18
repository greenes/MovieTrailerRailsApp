require 'httparty'

class Movie < ActiveRecord::Base
  validates :title, :year, :poster_url, :imdb_id, :presence => true

  def self.title (query)
      @title = HTTParty.get("http://www.omdbapi.com/?t=#{query}&y=&plot=short&r=json").parsed_response["Title"]
  end

  def self.poster (query)
      @poster = HTTParty.get("http://www.omdbapi.com/?t=#{query}&y=&plot=short&r=json").parsed_response["Poster"]
  end

  def self.year (query)
      @year = HTTParty.get("http://www.omdbapi.com/?t=#{query}&y=&plot=short&r=json").parsed_response["Year"]
  end

  def self.imdbid (query)
      @imdbid = HTTParty.get("http://www.omdbapi.com/?t=#{query}&y=&plot=short&r=json").parsed_response["imdbID"]
  end

  def self.actors (query)
      @actors = HTTParty.get("http://www.omdbapi.com/?t=#{query}&y=&plot=short&r=json").parsed_response["Actors"]
  end

  def self.plot (query)
      @plot = HTTParty.get("http://www.omdbapi.com/?t=#{query}&y=&plot=short&r=json").parsed_response["Plot"]
  end


end
