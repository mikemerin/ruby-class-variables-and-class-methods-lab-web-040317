class Song

  @@count, @@artists, @@genres = 0, [], []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name, @artist, @genre = name, artist, genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count() @@count end

  def self.artists() @@artists.uniq end

  def self.genres() @@genres.uniq end

  def self.genre_count
    h = Hash.new(0)
    @@genres.each { |x| h[x] += 1 }
    h
  end

  def self.artist_count
    h = Hash.new(0)
    @@artists.each { |x| h[x] += 1 }
    h
  end

end
