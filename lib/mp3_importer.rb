# The MP3 Importer will parse all the filenames in the
# `db/mp3s` folder and send the filenames to the Song class
require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path)[2..-1]
  end

  def import
    self.files.each {|filename|
    song = Song.new_by_filename(filename)}
  end

end
