$epsilon = 0.001
def fact(n)
  if n == 0
    return 1
  end
  if n == 1
    return n
  end
  n * fact(n - 1)
end

def sum(x, n = Float::INFINITY)
  raise "Invalid argument" if x < 0.1 || x > 1 || (n.finite? && (n < 10 || n > 58))
  sum = 0
  (0..).each do|i|
    addend = (Math.log(3, Math::E) ** i * x ** i).quo(fact(i))
    break if (n.infinite? && addend < $epsilon) || i == n
    sum += addend
  end
  sum
end

# puts sum(1, 58)
puts sum(0.5, 30)