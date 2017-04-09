# The Artist class will be responsible for either creating
# the artist (if the artist doesn't exist in our program yet)
# or finding the instance of that artist (if the artist does exist).


class Artist

attr_accessor :name
attr_reader :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(name)
    song = Song.new(name)
    @songs << song.name
    song.artist = self
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)
     if self.all.find {|artist| artist.name == name}
       self.all.find {|artist| artist.name == name}
     else
     name = Artist.new(name)
     end
   end

   def print_songs
     @songs.each {|song| puts song.name}
   end
end
