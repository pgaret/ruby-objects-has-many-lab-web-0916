class Song

  attr_accessor :name, :artist_name, :artist

  def initialize(name)
    @name = name
  end

  def artist=(theartist)
    @artist = theartist
    @artist_name = @artist.name
  end

end
