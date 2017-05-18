#create songs given each filename and
#send the artist's name to the artist class

require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name=name
  end

  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[1]
    song_artist = filename.split(" - ")[0]
    new_song=Song.new(song_name)
    new_song.artist=Artist.find_or_create_by_name(song_artist)
    new_song.artist.songs<<song_artist
    new_song
   #binding.pry

  end


  # def artist_name=(name)
  #   if (self.artist.nil)?
  #     self.artist=Artist.new(name)
  #   else
  #     self.artist.name = song.name
  #   end
  # end

end
