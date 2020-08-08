require 'pry'

class Artist

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include PARAMABLE
  
  attr_accessor :name
  attr_reader :songs

  @@artists 

  def add_song(song)
    @songs << song
  end 
end 