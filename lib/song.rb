# The Song class will be responsible for creating songs
# given each filename and sending the artist's name
# (a string) to the Artist class

class Song

attr_accessor :name, :artist

def initialize(name)
  @name = name
end

def self.new_by_filename(filename)
  song_name = filename.split(" - ")[1]
  artist_name = filename.split(" - ")[0]
  song = self.new(song_name)
  song.artist= Artist.find_or_create_by_name(artist_name)
  song.artist.add_song(song)
  song
end

# We'll also want to associate that new song
# with an artist. To do this we'll use a helper
#   method: Song#artist=(artist_name).


end
