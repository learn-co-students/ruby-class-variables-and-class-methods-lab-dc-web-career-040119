class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@artists << @artist
    @@genres << @genre
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
    hash = Hash.new(0)
    @@genres.each do |count|
      hash[count] +=1
    end
    hash
  end

  def self.artist_count
    ahash = Hash.new(0)
    @@artists.each do |count|
      ahash[count] +=1
    end
    ahash
  end

end
