require_relative './artist.rb'
class Song
    attr_accessor :artist, :name, :genre
  
    @@all = []
  
    def initialize(name)
      @name = name
      save
    end
  
    def save
      @@all << self
    end
  
    def self.all
      @@all
    end

    def artist_name
        self.artist
      end
  end

  song = Song.new("trick")

  print song.artist_name