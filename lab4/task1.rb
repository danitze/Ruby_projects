arr = Array.new(12) do
  rand(10)
end

puts "Arr: #{arr}"

def groups_amount(arr)
  arr.map do |elem|
    [elem, arr.count(elem)]
  end.to_h.filter { |_, v| v > 1 }.size
end

puts "Groups amount: #{groups_amount(arr)}"

