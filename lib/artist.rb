class Artist
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_songs
  
  def songs 
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  
  
end