require 'pry'

class Artist 
	attr_accessor :name,:songs

	def initialize name
		@name = name
		@songs = []
	end

	def add_song(song)
		song.artist = self
		@songs << song 
	end

	def add_song_by_name song_name
		song = Song.new(song_name)
		song.artist = self
		@songs << song 
	end

	def self.song_count 
		Song.all.length
	end

	# def songs 
	# 	Song.all.map do |song|
	# 		song.artist == self
	# 	end
	# end

end