defmodule ProjectEuler.Problem1 do
  @limit 1000
  @factors [3,5]

  def solve(_limit \\ @limit, _factors \\ @factors) do
    _factors = sieve([], Enum.sort(@factors))
  end

  defp sieve(factors, []), do: factors

  defp sieve(factors, [factor|candidates]) do
    [factor|sieve(factors, reject_multiples(candidates, factor))]
  end

  defp reject_multiples(numbers, factor) do
    Enum.reject(numbers, &(rem(&1, factor) == 0))
  end
end
