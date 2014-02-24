class DSL
  def method_missing(method, *args, &block)
    puts "called #{method} with #{args}"
  end
end


DSL.new.haha(23, 123, :d)
