# Write a max(list) that returns the element with the maximum value in the list.

# using find_max instead of max due to conflict with Kernel#max

defmodule MyList do
	def find_max([]), do: nil
	def find_max(list = [head | tail]), do: _find_max(list, head)

	defp _find_max([], largest), do: largest

	defp _find_max([ head | tail ], largest) when head > largest do
		_find_max(tail, head)
	end

	defp _find_max([ head | tail ], largest) when head <= largest do
		_find_max(tail, largest)
	end
end