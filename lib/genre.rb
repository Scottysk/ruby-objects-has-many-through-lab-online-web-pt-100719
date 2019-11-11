class Genre
  
  attr_accessor :name, :song, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Songs.all.select do |song|
      song.genre == self
    end
  
  
  
end