require 'test/unit'
require_relative 'task1'
require_relative 'task2'

class LabTest < Test::Unit::TestCase

  def test_task_1
    assert_in_delta(prm(0.3, 0.3, 5, method(task1:f1)), trp(0.3, 0.3, 5, task1:f2), 0.001)
    assert_in_delta(prm(0.0, Math::PI / 4, 5, method(task1:f2)), trp(0.0, Math::PI / 4, 5, method(task1:f2)), 0.001)
  end

  def test_task_2
    assert_in_delta(sum(0.1), 1.11, 0.01)
    assert_in_delta(sum(1), 3.0, 0.01)
    assert_in_delta(sum(0.5, 30), 1.732, 0.01)
  end

end
