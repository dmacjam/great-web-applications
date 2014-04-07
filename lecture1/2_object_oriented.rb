class Person
  def initialize(name)
    @name = name
  end

  def greet
    puts "hello! my name is #{@name}."
  end
end

p = Person.new('johno')
p.greet



#typ classov
puts p.class
puts p.class.class
puts p.class.class.class


puts 1.class
puts 1.public_methods(false).inspect


puts 2.even?


puts true.class
puts false.class
puts nil.class


#to + je vlastne metoda nad objektom
puts (1 + 2) == 1.+(2)


# duck typing
puts 2.respond_to?(:+)
#aj takto, string sa prekonvertuje na symbol
#puts 2.respond_to?('+')
