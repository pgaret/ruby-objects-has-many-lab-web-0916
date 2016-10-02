require 'song.rb'

class Artist

  attr_accessor :name, :songs
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []

  end

  def new_song_procedure
    songs.last.artist = self
    songs.last.artist_name = name
    @@song_count += 1
  end

  def add_song(song)
    songs << song
    new_song_procedure
  end

  def add_song_by_name(name)
    songs << Song.new(name)
    new_song_procedure
  end

  def self.song_count
    @@song_count
  end

end
