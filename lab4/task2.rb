require 'matrix'
# n = 8
# puts "Enter num matrix to multiply: "
# num = gets.chomp.to_i
# matrix_array = Array.new(n).map! do
#   Array.new(n).map do rand(10) end
# end
# matrix = Matrix[*matrix_array]
# puts "Initial matrix"
# puts matrix.to_a.map(&:inspect)

def multiply_matrix(matrix, num)
  matrix * num
end
# puts "Multiplied matrix"
# puts multiply_matrix(matrix, num).to_a.map(&:inspect)
