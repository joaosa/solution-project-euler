defmodule Multiple do
  def of?(x, n) do
    (rem n, x) == 0
  end
  def of_3_or_5?(n) do
    (of? 3, n) or (of? 5, n)
  end
end

limit = 1000 - 1
multiples = Enum.filter 1..limit, &(Multiple.of_3_or_5?/1)
sum = Enum.reduce multiples, 0, &(&1 + &2)
IO.puts sum
