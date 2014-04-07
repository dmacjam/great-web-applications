require 'singleton'

class God
  include Singleton
end

# God.new


puts God.instance == God.instance


class Family
  include Enumerable

  def each
    yield 'Jano'
    yield 'Sona'
    yield 'Lea'
  end
end


f = Family.new

#f.each do |meno|
#  puts meno
#end

puts f.partition { |member| member.include?('e') }.inspect    #rovnake ako .to_s v tomto pripade
