
# этот код будум улучшать не меняя его функционала
require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)

  unless n.is_a? Integer
    return "n must be an integer."
  end

  if n <= 0
    return "n must be greater than 0."
  end
  
  return Prime.first n
end

first_n_primes(10)

# 
require 'prime'   # This is a module. We'll cover these soon!
def first_n_primes(n)
  return "#{n} must be an integer." unless n.is_a? Integer
  return "#{n} must be greater than 0." if n <= 0
  Prime.first n
end
p first_n_primes(10)