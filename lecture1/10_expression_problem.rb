class Literal < Struct.new(:value)
  def show
    print value
  end
end

class Add < Struct.new(:left, :right)
  def show
    left.show
    print ' + '
    right.show
  end
end

two = Literal.new(2)
three = Literal.new(3)
four = Literal.new(4)
five = Literal.new(5)

three_and_four = Add.new(three, four)
seven_and_five = Add.new(three_and_four, five)

total = Add.new(two, seven_and_five)

total.show

puts

# add data
class Negative < Struct.new(:expression)
  def show
    print ' - ('
    expression.show
    print ')'
  end
end



# add behaviour Evaluating







class Literal
  def eval
    value
  end
end

class Add
  def eval
    left.eval + right.eval
  end
end

class Negative
  def eval
    -expression.eval
  end
end

puts Negative.new(total).eval
