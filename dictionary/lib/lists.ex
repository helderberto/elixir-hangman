defmodule Lists do
  def swap({a, b}) do
    {b, a}
  end

  def equal(a, a), do: true
  def equal(_, _), do: false

  def sum([]), do: 0
  def sum([h | t]), do: h + sum(t)

  def double([]), do: []
  def double([h | t]), do: [h * 2 | double(t)]

  def square([]), do: []
  def square([h | t]), do: [h * h | square(t)]

  def map([], _func), do: []
  def map([h|t], func), do: [func.(h) | map(t, func)]
end
