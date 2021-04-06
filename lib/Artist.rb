require "pry"

class Artist
  attr_accessor :name, :song, :musiclibrarycontroller, :musicimporter
  extend Concerns::Findable
  @@all = []

  def initialize(name)
    @name = name
    
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def self.create(artist)
    artist = self.new(artist)
    artist.save
    artist
  end 


  def add_song(song)
   #binding.pry
   song.artist = self unless song.artist == self
      @songs << song unless @songs.include?(song)
   @songs
  end
  
   def songs
    Song.all.select do |song|
      
      binding.pry
  end
    
  
  end

  def genres
    @new_array = []
    @songs.each do |song|
      if @new_array.include?(song.genre)
        nil
      else
        @new_array << song.genre
      end
    end
    @new_array
  end

end