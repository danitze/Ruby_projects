$binary_num = 0b1000010001
$power_counter = 0
$decimal_num = 0
$binary_num.to_s(2).reverse.each_char do |ch|
  $decimal_num += ch.to_i * 2 ** $power_counter
  $power_counter += 1
end

puts $decimal_num


