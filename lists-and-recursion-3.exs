defmodule MyList do
	def caesar([], _offset), do: []

	def caesar([ head | tail ], offset) when head + offset <= 122 do
		[head + offset | caesar(tail, offset)]
	end

	def caesar([ head | tail ], offset) do
		[head + offset - 26 | caesar(tail, offset)]
	end
end