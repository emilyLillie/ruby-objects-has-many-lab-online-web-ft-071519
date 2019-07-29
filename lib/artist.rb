# class Artist
# attr_accessor :name
# @@count = 1

#   def initialize(name)
#     @name = name
#     @@songs = []
#   end

#   def add_song(song)
#     @@count += 1 
#     @@songs << song
#     song.artist = self
#   end

#   def songs
#   @@songs
#   end

#   def add_song_by_name(name)
#     @@count += 1 
#     song = Song.new(name)
#     @@songs << song
#     song.artist = self
#   end

#   def self.song_count
#   @@count
#   end

# end


class Artist

 	attr_accessor :name, :songs

 	@@all = []

 	def initialize(name)
		@name = name
		@songs = []
		@@all << self
	end

 	def add_song(song)
		@songs << song
		song.artist = self
	end

 	def add_song_by_name(song_name)
		song = Song.new(song_name)
		add_song(song)
	end

 	def self.song_count
		Song.all.length
	end

 end