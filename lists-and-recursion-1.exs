# Write a mapsum function that takes a list and a function. 
# It applies the function to each element of the list and then sums the result, so

# ​ 	​iex>​ MyList.mapsum [1, 2, 3], &(&1 * &1)
# ​ 	14

defmodule MyList do
	def mapsum(list, func), do: _mapsum(list, 0, func)

	defp _mapsum([], value, _func), do: value
	defp _mapsum([ head | tail ], value, func) do
		_mapsum( tail, func.(head) + value, func )
	end
end