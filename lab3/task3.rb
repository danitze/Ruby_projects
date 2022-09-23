#1
def task_3_1
  x = 2
  sum = 1
  (1..10).each do |i|
    sum += x ** i * (i + 1).quo(i + 2) * (-1) ** i
  end
  sum
end

#puts "Sum (task 1) = #{task_3_1}"

#4
#puts "Enter n:"
#n = gets.chomp.to_i
def task_3_2(n)
  sum = 0
  (1..n).each do |i|
    denominator = 0
    (1..i).each do |j|
      denominator += Math.sin(j)
    end
    sum += 1.quo(denominator)
  end
  sum
end

#puts "Sum (task 4) = #{task_3_2(1)}"
