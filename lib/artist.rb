class Artist
  attr_accessor :name, :songs
  @@all=[]
  def initialize(name)
    @name=name
    @@all<<self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song=Song.new
    song.name=name
    song.genre=genre
    song.artist=self
  end


end
