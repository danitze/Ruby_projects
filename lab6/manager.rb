require_relative 'luggage'

class Manager
  def initialize(people_luggage)
    @people_luggage = people_luggage
  end

  def luggage_differs_from_mean_less_than_0_3_kilos
    mean_weight = @people_luggage
                    .map { |luggage| luggage.weight }
                    .inject(0) { |sum, x| sum + x }
                    .quo @people_luggage
                           .map { |luggage| luggage.amount }
                           .inject(0) { |sum, x| sum + x }
    result_luggage = nil
    @people_luggage.each do |luggage|
      if (luggage.get_mean_weight - mean_weight).abs <= 0.3
        result_luggage = luggage
        break
      end
    end
    result_luggage
  end

  def passengers_with_more_2_pieces_amount
    @people_luggage.select { |luggage| luggage.amount > 2 }.length
  end

  def passengers_with_more_than_mean_pieces_amount
    mean_pieces = @people_luggage.map { |luggage| luggage.amount }
                                 .inject(0) { |sum, x| sum + x }.quo @people_luggage.length
    @people_luggage.select { |luggage| luggage.amount > mean_pieces }.length
  end

  def passengers_equal_amount_but_weight_differs_0_5_kilos?
    @people_luggage.each_with_index do |luggage_i, i|
      @people_luggage.each_with_index do |luggage_j, j|
        if i != j && luggage_i.amount == luggage_j.amount && (luggage_i.weight - luggage_j.weight).abs <= 0.5
          return true
        end
      end
    end
    false
  end

  def passenger_with_max_weight_and_amount?
    luggage_max_amount = @people_luggage.max_by { |luggage| luggage.amount }
    luggage_max_weight = @people_luggage.max_by { |luggage| luggage.weight }
    luggage_max_amount == luggage_max_weight &&
      @people_luggage.select { |luggage| luggage.amount == luggage_max_amount.amount }.length == 1 &&
      @people_luggage.select { |luggage| luggage.weight == luggage_max_weight.weight }.length == 1
  end

  def passenger_with_one_piece_less_than_30_kilos?
    @people_luggage.select { |luggage| luggage.amount == 1 && luggage.weight < 30 }.any?
  end
end
