$n = 8
$c = 17
pi = 3.141

def y(x)
  1.0 / (x ** (1.quo 4) - (1.quo x) ** (1.quo 4)) ** ($n)
  + (x + 1).quo(x ** 2 - 4 * x + 3 * $n)
  +(36 * x * $c * $n) ** (1.quo 4) / ((x + $c * $n + 1).quo(x + 5))
end

def z(x)
  (Math.tan(2*x) * Math.cos(2*x)**(-1) - Math.tan(2*$c + x) * Math.cos(2*x)**(-2))
    .quo(Math.cos(2*x) ** (-1) + Math.cos(3 * x) ** (-2))
  + (1 + Math.cos($n * x) ** (1.quo $c)).quo(2 * x + Math.sin(3 * x) ** 2)
end

#1
puts "Part 1"
1.step($n, ($n - 1).quo($n + $c)).each do |x|
  puts "X = #{x}, y = #{y(x)}"
end

#2
puts "Part 2"
pi.quo($n).step(pi, ((pi - pi.quo($n)).quo(3.quo(2) * $n + $c))).each do |x|
  puts "X = #{x}, z = #{z(x)}"
end

#3
puts "Part 3"
2.step($c, ($c - 2).quo(2 * $n)).each do |x|
  f = if x > 2 && x < $n
        y(x)
      elsif x > $n && x < 2 * $n
        z(x)
      else
        y(x) + z(x)
      end
  puts "X = #{x}, f = #{f}"
end