$points = [
  [150, 49], [221, 78], [219, 121], [208, 158], [167, 182], [108, 192], [72, 171], [59, 133], [76, 115], [91, 97],
  [75, 78], [67, 58], [79, 47], [98, 30], [118, 22], [136, 30], [143, 37]
]

$sum = 0

$points.each_with_index do |pair, index|
  next_pair = $points[(index + 1) % $points.length]
  $sum += (pair[0] + next_pair[0]) * (pair[1] - next_pair[1])
end

$sum = 0.5 * $sum.abs
puts $sum
