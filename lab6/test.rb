require 'test/unit'

require_relative 'manager'

class LabTest < Test::Unit::TestCase
  def test_luggage_differs_from_mean_less_than_0_3_kilos
    luggage_1 = Luggage.new(1, 2.5)
    luggage_2 = Luggage.new(2, 3.8)
    manager = Manager.new([luggage_1, luggage_2])
    assert_equal(manager.luggage_differs_from_mean_less_than_0_3_kilos, luggage_2)
  end

  def test_passengers_with_more_2_pieces_amount
    luggage_1 = Luggage.new(1, 3)
    luggage_2 = Luggage.new(3, 3)
    luggage_3 = Luggage.new(2, 4)
    luggage_4 = Luggage.new(6, 8)
    manager = Manager.new([luggage_1, luggage_2, luggage_3, luggage_4])
    assert_equal(manager.passengers_with_more_2_pieces_amount, 2)
  end

  def test_passengers_with_more_than_mean_pieces_amount
    luggage_1 = Luggage.new(1, 3)
    luggage_2 = Luggage.new(3, 3)
    luggage_3 = Luggage.new(4, 3)
    manager = Manager.new([luggage_1, luggage_2, luggage_3])
    assert_equal(manager.passengers_with_more_than_mean_pieces_amount, 2)
  end

  def passengers_equal_amount_but_weight_differs_0_5_kilos
    luggage_1 = Luggage.new(2, 3)
    luggage_2 = Luggage.new(2, 3.5)
    manager = Manager.new([luggage_1, luggage_2])
    assert_true(manager.passengers_equal_amount_but_weight_differs_0_5_kilos?)

    luggage_1 = Luggage.new(1, 3)
    luggage_2 = Luggage.new(2, 3.5)
    manager = Manager.new([luggage_1, luggage_2])
    assert_false(manager.passengers_equal_amount_but_weight_differs_0_5_kilos?)

    luggage_1 = Luggage.new(2, 3)
    luggage_2 = Luggage.new(2, 3.6)
    manager = Manager.new([luggage_1, luggage_2])
    assert_false(manager.passengers_equal_amount_but_weight_differs_0_5_kilos?)
  end

  def test_passenger_with_max_weight_and_amount
    luggage_1 = Luggage.new(1, 1)
    luggage_2 = Luggage.new(2, 2)
    manager = Manager.new([luggage_1, luggage_2])
    assert_true(manager.passenger_with_max_weight_and_amount?)

    luggage_1 = Luggage.new(1, 2)
    luggage_2 = Luggage.new(2, 2)
    manager = Manager.new([luggage_1, luggage_2])
    assert_false(manager.passenger_with_max_weight_and_amount?)
  end

  def test_passenger_with_one_piece_less_than_30_kilos
    luggage_1 = Luggage.new(1, 1)
    manager = Manager.new([luggage_1])
    assert_true(manager.passenger_with_one_piece_less_than_30_kilos?)

    luggage_1 = Luggage.new(1, 31)
    manager = Manager.new([luggage_1])
    assert_false(manager.passenger_with_one_piece_less_than_30_kilos?)
  end
end
