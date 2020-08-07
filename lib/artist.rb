require 'pry'

class Artist

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include PARAMABLE
  
  attr_reader :songs	  
  attr_reader :songs


  @@artists = [] 
  
  def initialize
    super
    @songs = []
  end
  
  def self.all 
    @@artists
  end 
  
  def add_song(song)
    @songs << song
    song.artists = self 
    songs.each { |song| add_song(song) }
  end 
end 