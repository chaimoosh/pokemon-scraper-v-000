class Pokemon
  attr_accessor :name, :type, :db
  
  def intialize(pokemon_hash)
    pokemon_hash.each{|key, value| self.send(("#{key}="), value)} 
  end 
end
