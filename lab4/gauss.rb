require 'matrix'

class Matrix
  def divide_row_by(row, column)
    divisor = @rows[row][column]
    @rows[row] = @rows[row].map do |item|
      item.quo divisor
    end
  end

  def subtract_row(minuend_row, subtrahend_row, coefficient = 1)
    vector_minuend = Vector[*@rows[minuend_row]]
    vector_subtrahend = Vector[*@rows[subtrahend_row]] * coefficient
    @rows[minuend_row] = (vector_minuend - vector_subtrahend).to_a
  end
end

# puts "Enter n:"
# n = gets.chomp.to_i
# raise "Wrong n value" if n < 3 || n > 9
# matrix_array = Array.new(n).map! do Array.new(n + 1) end
# (0...n).each { |i|
#   (0..n).each { |j|
#     if j < n
#       puts "Enter coefficient (#{i + 1}, #{j + 1})"
#     else
#       puts "Enter coefficient (#{i + 1}, 0)"
#     end
#     matrix_array[i][j] = gets.chomp.to_i
#   }
# }

def gauss(matrix_array, n)
  matrix = Matrix[*matrix_array]
  (0...n).each do |i|
    matrix.divide_row_by(i, i)
    (i + 1...n).each do |j|
      matrix.subtract_row(j, i, matrix[j, i])
    end
  end

  (0...n).reverse_each do |i|
    matrix.divide_row_by(i, i)
    (0...i).reverse_each do|j|
      matrix.subtract_row(j, i, matrix[j, i])
    end
  end

  x_vector = Array.new(n)
  (0...n).each do|i|
    x_vector[i] = matrix[i, n]
  end
  x_vector
end

# puts gauss(matrix_array, n).map(&:inspect)