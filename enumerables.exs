
defmodule Concat do
  def join(_, sep \\ "", accumulator \\ "")
  def join([head | tail], sep, accumulator) do
    join(tail, sep, "#{head}#{sep} #{accumulator}")
  end

  def join(_, _, accumulator) do
    accumulator
  end
end
IO.puts Concat.join([1,2,3], ",")
# Won't output because it's an array
IO.puts Concat.join(Enum.map(1..3, fn x -> x * 2 end), "")
# [2,4,6]
IO.puts Enum.reduce(1..3, 0 , &+/2)

odd? = &(rem(&1, 2) != 0)

Enum.filter(1..3, odd?)

IO.puts 1..100_000 |> Enum.map(&(&1 * 3)) |> Enum.filter(odd?) |> Enum.sum()

streamX3OddSum = fn x -> x |> Stream.map(&(&1 * 3)) |> Stream.filter(odd?) |> Enum.sum end

IO.puts streamX3OddSum.(1..100_000)

# Cycle
streamCycle = Stream.cycle(1..10)
cycleResult = Enum.take(streamCycle, 10)

IO.puts length(cycleResult)
