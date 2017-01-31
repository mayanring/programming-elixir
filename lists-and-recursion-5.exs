# Implement the following Enum functions using no library functions or list comprehensions: all?, each, filter, split, and take. You may need to use an if statement to implement filter. The syntax for this is

# ​ 	​if​ condition ​do​
# ​ 	  expression(s)
# ​ 	​else​
# ​ 	  expression(s)
# ​ 	​end​


defmodule MyList do
	def all?([], _func), do: true

	def all?([ head | tail], func) do
		func.(head) && all?(tail, func)
	end

	def each([], _func), do: :ok

	def each([ head | tail], func) do
		func.(head)
		each(tail, func)
	end

	def filter([], _func), do: []

	def filter([head | tail], func) do
		if func.(head) do
			[head | filter(tail, func)]
		else
			filter(tail, func)
		end
	end
end