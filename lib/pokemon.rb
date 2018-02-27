require'pry'
class Pokemon
  attr_accessor :name, :type, :db, :id
  
  def initialize(name:, type:, db:, id:)
    @name = name
    @type = type
    @db = db
    @id = id
  end
  
  def self.save(name, type, db) 
    db.execute("INSERT INTO pokemon (name, type) VALUES (?,?)", name, type) 
  end 
  
  def self.find(num, db)
    poke = db.execute("SELECT * FROM pokemon WHERE id = ?", num)
    face= self.new(id: poke[1], name: poke[2], type: poke[3], db: db)
    binding.pry
  end 
end
