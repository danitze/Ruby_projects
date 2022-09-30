require 'test/unit'

require_relative 'task1'
require_relative 'task2'
require_relative 'gauss'

class LabTest < Test::Unit::TestCase

  def test_task_1
    arr = [1, 2, 3, 2, 1]
    assert_equal(groups_amount(arr), 2)
    arr = [1, 1, 1, 1, 1, 5]
    assert_equal(groups_amount(arr), 1)
    arr = [1, 2, 3, 4, 5]
    assert_equal(groups_amount(arr), 0)
  end

  def test_task_2
    matrix_array = [
      [1, 2],
      [3, 4]
    ]
    result_matrix_array = [
      [2, 4],
      [6, 8]
    ]
    assert_equal(multiply_matrix(Matrix[*matrix_array], 2), Matrix[*result_matrix_array])
    assert_equal(multiply_matrix(Matrix[*matrix_array], 1), Matrix[*matrix_array])
  end

  def test_gauss
    matrix_arr = [
      [1, 2, 3, 4],
      [1, 1, 2, 3],
      [1, 1, 1, 2]
    ]
    result = [1/1r, 0/1r, 1/1r]
    assert_equal(gauss(matrix_arr, 3), result)
  end

end
