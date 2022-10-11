def f1(x)
  1.quo((x + 1) * Math.sqrt(x**2 + 1))
end

def f2(x)
  Math.tan(x.quo 2 + Math::PI / 4) ** 3
end

def prm(a, b, n, f)
  h = (b - a).quo n
  h * (1..n).inject(0) {|sum, i| sum + f.call(a + i * h - h.quo(2))}
end

def trp(a, b, n, f)
  h = (b - a).quo n
  h * (1...n).inject((f.call(a) + f.call(b)).quo 2) do |sum, i|
    sum + f.call(a + i * h)
  end
end

# puts prm(0.3, 0.3, 5, method(:f1))
# puts trp(0.3, 0.3, 5, method(:f1))
# puts prm(0.0, Math::PI / 4, 5, method(:f2))
# puts trp(0.0, Math::PI / 4, 5, method(:f2))
