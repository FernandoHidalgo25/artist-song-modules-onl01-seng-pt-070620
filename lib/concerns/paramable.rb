require "pry"

module PARAMABLE

  def to_param
    name.downcase.gsub(' ', '-')
  end
  
  def add 

end