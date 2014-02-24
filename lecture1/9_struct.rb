class Color < Struct.new(:r, :g ,:b)
  def to_hex
    '#%02x%02x%02x' % [r, g, b]
  end
end

puts Color.new(255, 0, 0).to_hex

puts Struct.new(:r, :g, :b).inspect
