require_relative 'task1'
require_relative 'task2'
require_relative 'task3'
require_relative 'task4'
require 'test/unit'

class TestTask1 < Test::Unit::TestCase

  def test_task_1
    assert_equal(expression_1, false)
    assert_equal(expression_2, false)
    assert_equal(expression_3, false)
    assert_equal(expression_4, false)
    assert_equal(expression_5, false)
    assert_equal(expression_6, true)
    assert_equal(expression_7, true)

    assert_equal(part_2, false)
  end

  def test_task_2
    assert_in_delta(y1(10), y2(10), 0.001)
    assert_in_delta(y1(25), y2(25), 0.001)
  end

  def test_task_3
    assert_equal(task_3_1, 435208/693r)
    assert_in_delta(task_3_2(4), 3.169135850016603, 0.01)
    assert_in_delta(task_3_2(1), 1.1883951057781212, 0.01)
  end

  def test_task_4
    assert_equal(task_4_1, 1/46656r)
    assert_in_delta(task_4_2(2), Math.log(2), 0.01)
    assert_in_delta(task_4_2(20), Math.log(20), 0.01)
    assert_equal(task_4_3, 9865/294912r)
  end

end
