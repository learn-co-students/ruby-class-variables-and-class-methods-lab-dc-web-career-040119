require 'pry'

class Song

  attr_accessor(:name, :artist, :genre)

  @@count = 0
  @@artists = []
  @@genres = []
  @artist_hash = {}
  @genre_hash = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.each_with_object(Hash.new(0)) do |e, total|
      total[e] += 1
    end
  end

  def self.artist_count
    @@artists.each_with_object(Hash.new(0)) do |e, total|
      total[e] += 1
    end
  end

end
