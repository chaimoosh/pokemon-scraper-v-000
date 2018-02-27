class Pokemon
  attr_accessor :name, :type, :db
  
  def initialize(hash)
    hash.each{|key, value| self.send(("#{key}="), value)}
  end 
end
