$decimal_num = 123
$binary_string = ""

while $decimal_num != 0 do
  $binary_string += ($decimal_num % 2).to_s
  $decimal_num /= 2
end

$binary_string = $binary_string.reverse

puts $binary_string
