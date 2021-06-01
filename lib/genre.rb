class Genre
  attr_accessor :name
  @@all=[]

  def initialize(name)
    @name=name
  end

  def songs
    Song.all {|song|song.genre==self}
  end

  def self.all
    @@all
  end
end
