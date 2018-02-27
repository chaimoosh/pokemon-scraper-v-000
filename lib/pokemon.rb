class Pokemon
  attr_accessor :name, :type, :db
  
  def initialize(:name, type, db)
    local_variables.each do |k|
    v = eval(k.to_s)
    instance_variable_set("@#{k}", v) unless v.nil?
  end
  end 
end
