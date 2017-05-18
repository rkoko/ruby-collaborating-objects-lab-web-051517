#parse all filenames in the db/mp3 folder
#send filenames to the Song class
require_relative '../lib/song.rb'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path=path
  end

  def files
    array_files=Dir["#{@path}/**/*.mp3"]

    #path = "./spec/fixtures/mp3s"
    normalized=array_files.collect do |file|
    file.split("./spec/fixtures/mp3s/")[1]
    end

  end

  def import
    #imports the files into the library by \
    #creating songs from a filename
    self.files.each {|file| Song.new_by_filename(file)}


  end

end
