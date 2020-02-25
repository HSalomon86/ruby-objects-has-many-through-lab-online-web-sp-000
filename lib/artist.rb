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

  def new_song(name)
    song = Song.new(name)
    song.artist = self
  end

  def songs
    Songs.all.select do |song|
      song.artist == self
    end
  end

  def genres
    Genre.all.select do |genre|
      genre.artist == self
    end

  end

end
