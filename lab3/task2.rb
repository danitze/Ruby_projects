puts "Enter x:"
#x = gets.chomp.to_f
def y1(x)
  if x > -4 && x <= 0
    ((x - 2).abs / (x ** 2 + Math.cos(x))) ** (1.quo(7))
  elsif x > 0 && x <= 12
    1.quo((Math.tan(x + 1.quo(Math::E ** x)) / Math.sin(x) ** 2) ** 7.quo(2))
  else
    1.quo(1 + x.quo(1 + x.quo(1 + x)))
  end
end

def y2(x)
  case x
  when -4.to_f.next_float..0  then
    ((x - 2).abs / (x ** 2 + Math.cos(x))) ** (1.quo(7))
  when 0.to_f.next_float..12 then
    1.quo((Math.tan(x + 1.quo(Math::E ** x)) / Math.sin(x) ** 2) ** 7.quo(2))
  else
    1.quo(1 + x.quo(1 + x.quo(1 + x)))
  end
end

#puts "Result is #{y1(x)} #{y2(x)}"


