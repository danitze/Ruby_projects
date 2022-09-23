$epsilon = 0.00001

def factorial(n)
  n > 1 ? n * factorial(n - 1) : 1
end

#1

def task_4_1
  sum = 0
  (2..).each do |i|
    addend = (factorial(i - 1).quo factorial(i + 1)) ** (i * (i + 1))
    break if addend < $epsilon
    sum += addend
  end
  sum
end

puts "Sum1 = #{task_4_1}"

#2
#puts "Enter x:"
#x = gets.chomp.to_f
def task_4_2(x)
  approximate_ln = 0
  (0..).each do |n|
    addend = ((x - 1) ** (2 * n + 1)).quo((2 * n + 1) * (x + 1) ** (2 * n + 1))
    break if addend < $epsilon
    approximate_ln += addend
  end
  approximate_ln * 2
end

#puts "Actual ln: #{Math.log(x)}"
#puts "Approximate ln: #{task_4_2(x)}"

#3
def task_4_3
  result = 0
  (1..).each do |n|
    addend = (factorial(4 * n - 1) * factorial(2 * n - 1)).quo(factorial(4 * n) * 2 ** (2 * n) * factorial(2 * n))
    break if addend < $epsilon
    result += addend
  end
  result
end

#puts "Sum3 = #{task_4_3}"
