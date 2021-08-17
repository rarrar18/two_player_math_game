class Person
  attr_accessor :name   # define getter/setter, and instance variable @name

  def initialize(name)
    @name = name
  end

end

p = Person.new('L. Ron')
puts p.name
p.name = "T. Justin"
puts p.name
