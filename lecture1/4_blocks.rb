5.times do
  puts 'hurray!'
end



a = [10, 9, 8, 7, 6, 1, 2, 3, 4, 5]

a.each do |i|
  puts i
end


a.each_with_index do |item, index|
  puts "item #{item} has index #{index}."
end


a.each.with_index.with_object({}) do |(item, index), table|
  table[item] = index
  puts table.inspect
end





def with_transaction(&block)
  puts 'BEGIN'
  block.call
  puts 'COMMIT'
end


with_transaction do
  puts 'SQL!'
end





def with_transaction_level(level, &block)
  puts "BEGIN #{level}"
  yield
  puts 'COMMIT'
end


with_transaction_level('LEVEL 2') do
  puts 'SQL AGAIN!'
end





def with_transaction3
  puts 'BEGIN'
  yield
  puts 'COMMIT'
end





def one_two_three
  yield 1
  yield 2
  yield 3
end

one_two_three do |i|
  puts i
end

