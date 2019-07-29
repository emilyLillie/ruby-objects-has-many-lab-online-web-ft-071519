class Artist
attr_accessor :name
@@count = 1

  def initialize(name)
    @name = name
    @@songs = []
  end

  def add_song(song)
    @@count += 1 
    @@songs << self
    song.artist = self
  end

  def songs
   @@songs
  end

  def add_song_by_name(name)
    @@count += 1 
    song = Song.new(name)
    @@songs << self
    song.artist = self
   end

  def self.song_count
   @@count
  end

end