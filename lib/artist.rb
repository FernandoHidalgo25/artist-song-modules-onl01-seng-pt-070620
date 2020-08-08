require 'pry'

class Artist

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include PARAMABLE
  
  attr_accessor :name
  attr_reader :songs

  @songs = []
  @@artists = [] 
  
  def initialize
  self.class.all << self
end
  
  def self.all 
    @@artists
  end 
  
  def add_song(song)
    @songs << song
  end 
end 