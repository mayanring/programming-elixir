# Write a function that returns true if a single-quoted string contains only printable ASCII characters (space through tilde).

defmodule MyString do
  def printable?([]), do: true

  def printable?([head | tail]) do
    head <= 126 && head >= 32 && printable?(tail)
  end
end