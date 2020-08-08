require 'pry'

class Song 
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include PARAMABLE
  
  attr_accessor :name, :artist, :song 

  @@songs = []

  def initialize
  self.class.all << self
  end
  
  def self.all
    @@songs
  end
end
