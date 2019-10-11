class Artist
 
  attr_accessor :name, 
 
  @@all = []
 
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
    song.artist = ()
  end
 
  def self.all
    @@all
  end
 end