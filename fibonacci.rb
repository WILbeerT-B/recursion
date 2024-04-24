require 'pry-byebug'

def fibs(n)
  num_array = Array.new(n)
  for i in 0...num_array.length do
    #binding.pry
    num_array[i] = i
    if i > 1
      num_array[i] = num_array[i-1] + num_array[i-2]
    end
  end
  return num_array
end

def fibs_rec(n)
  if n < 2 
    n
  else
    (fibs_rec(n-1) + fibs_rec(n-2))
  end
end

p fibs(8)
p fibs_rec(8)