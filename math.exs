defmodule Math do
  def sum(a, b) do
    do_sum(a, b)
  end

  defp do_sum(a, b) do
    a + b
  end
  def zero?(0) do
    true
  end

  def zero?(x) when is_integer(x) do
    false
  end

  def sum_list([head | tail], accumulator) do
    sum_list(tail, head + accumulator)
  end

  def sum_list([], accumulator) do
    accumulator
  end
end

IO.puts Math.sum(1, 2)    #=> 3
# IO.puts Math.do_sum(1, 2) #=> ** (UndefinedFunctionError)
IO.puts Math.zero?(0)         #=> true
IO.puts Math.zero?(1)         #=> false
# IO.puts Math.zero?([1, 2, 3]) #=> ** (FunctionClauseError)
# IO.puts Math.zero?(0.0)       #=> ** (FunctionClauseError)
IO.puts Math.sum_list [1, 2, 3], 0

defmodule Recursion do
  def print_multiple_times(msg, n) when n > 0 do
    IO.puts(msg)
    print_multiple_times(msg, n - 1)
  end

  def print_multiple_times(_msg, 0) do
    :ok
  end
end

Recursion.print_multiple_times("Hello!", 3)


defmodule Concat do
  def join(a, b) do
    IO.puts "***First join"
    a <> b
  end

  def join(a, b, sep) do
    IO.puts "***Second join"
    a <> sep <> b
  end
end
