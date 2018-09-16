class Artist
attr_accessor :name, :genre
@@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
    @genre = genre
  end

def new_song(song, genre)
  artist.new(song, genre)
end 
  
def artist
    artists.all.select do |artist|
      artist.song == self
    end
  end




  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def genres
    self.songs.collect {|song| song.genre}
  end

  def self.all 
    @@all 
end
end 