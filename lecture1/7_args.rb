def variable(*args)
  puts args.inspect
end

variable
variable(1)
variable(1,2,3)


def keyword_args(a: 1, b: 2, c: 3)
  puts [a, b, c].inspect
end


keyword_args(b: 5, a: 10)

def keyword_args2(a: 1, b: 2, c: 3, **options)
  #puts [a, b, c,options].inspect
  puts [a, b, c,options].inspect
  puts options.inspect
  #toto je pomenovany parameter
  #puts a
end

keyword_args2(x: 10)

