class Artist
  
  attr_accessor :name
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  
  end
  
  def self.all
    @@all  
  end
  
  def songs
    @songs = Song.all.select{|song| song.artist == self}
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def self.find_or_create_by_name(name)
    unless @@all.find{|artist| artist.name == name}
      Artist.new(name)
    else
      @@all.find{|artist| artist.name == name}
    end
  end
  
  def print_songs
    songs
    @songs.each{|song| puts song.name}
  end
  
end