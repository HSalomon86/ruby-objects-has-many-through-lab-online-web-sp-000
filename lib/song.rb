class Song
 attr_accessor :name, :artist, :genre

 @@all = []

 def initialize(name, artist, genre)
   @name = name
   @artist = artist
   @genre = artist
   @@all << self

 def self.all
   @@all
 end







end
