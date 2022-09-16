#Var 1

puts "Enter x:"
$x = gets.chomp.to_f

puts "Enter a:"
$a = gets.chomp.to_f

puts "Enter b:"
$b = gets.chomp.to_f

puts "Enter c:"
$c = gets.chomp.to_f

puts "Enter fi:"
$fi = gets.chomp.to_f

$addend1 = (Math.sin(3 * $x) ** 3 + Math.atan($fi) - 6 * 10 ** 3.1) / Math.sqrt($a * $x ** 2 + $b * $x + $c)
$addend2 = Math::E ** $x * Math.tan($x + 2).abs

$s = $addend1 + $addend2
puts "Result is " + $s.to_s