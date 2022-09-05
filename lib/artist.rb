require 'pry'

class Artist
  attr_accessor :name
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
  
    def add_song(song)
      song.artist = self
    end
  
    def songs
      Song.all.select {|song| song.artist == self }
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end

    def self.song_count
        Song.all.size
    end
  end

adele = Artist.new("Adele")
# adele.add_song_by_name("Niggas in Paris")
# print adele.songs
# print Song.all