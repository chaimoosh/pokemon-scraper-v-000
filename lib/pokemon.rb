class Pokemon
  attr_accessor :name, :type, :db, :id
  @@all = []
  
  def initialize(name:, type:, db:, id:)
    local_variables.each do |k|
      v = eval(k.to_s)
      instance_variable_set("@#{k}", v) unless v.nil?
    end
  end
  
  def self.save 
    pokemon = self.new
    @@all << pokemon
  end 
end
