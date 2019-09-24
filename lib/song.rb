class Song
  
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self  
  end
  
  def artist=(artist)
      artist = self.name

  end
  
  def self.all
    @@all
  end
end