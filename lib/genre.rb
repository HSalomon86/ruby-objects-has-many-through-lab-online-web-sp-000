def Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Songs.all.select do |song|
      song.genre == self
    end
  end

  def artists
    Artists.all.select do |artist|
      artist.genre = self
    end
  end


  def self.all
    @@all
  end


end
