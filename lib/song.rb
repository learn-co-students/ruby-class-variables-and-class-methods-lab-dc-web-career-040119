require 'pry'

class Song 

	attr_reader :name, :artist, :genre

	@@count = 0
	@@artists = []
	@@genres = []

	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		@@count +=1
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
		genre_count = {}
		self.genres.each do |song_genre|
			genre_count[song_genre] = @@genres.count(song_genre)
		end 
		genre_count
	end 

	def self.artist_count 
		artist_count = {}
		self.artists.each do |song_artist|
			artist_count[song_artist] = @@artists.count(song_artist)
		end 
		artist_count
	end 
end 