#Part 1
#puts "Part 1"
$a = true
$b = false
$c = true
$x = 2
$y = 10
$z = -50

def expression_1
  !($a || $b) && ($a && !$b)
end

def expression_2
  ($z != $y).object_id <= (6 >= $y).object_id && $a || $b && $c && $x >= 1.5
end

def expression_3
  (8 - $x * 2 <= $z) && ($x**2 <= $y**2) || ($z >= 15)
end

def expression_4
  $x > 0 && $y < 0 || $z >= ($x * $y - $y.quo($x)) + (-$z)
end

def expression_5
  !($a || $b  && !($c || (!$a || $b)))
end

def expression_6
  $x**2 + $y**2 >= 1 && $x >= 0 && $y >= 0
end

def expression_7
  ($a && ($c && $b != $b || $a) || $c) || $b
end

# puts expression_1
#
# puts expression_2
#
# puts expression_3
#
# puts expression_4
#
# puts expression_5
#
# puts expression_6
#
# puts expression_7


#Part 2
puts "\nPart 2"
def part_2
  a = 2.5
  p = true
  ((Math.log(a) > a) || !p) && (Math.sqrt(a) < a**4)
end
#puts part_2