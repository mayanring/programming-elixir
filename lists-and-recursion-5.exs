# Implement the following Enum functions using no library functions or list comprehensions: all?, each, filter, split, and take. You may need to use an if statement to implement filter. The syntax for this is

# ​ 	​if​ condition ​do​
# ​ 	  expression(s)
# ​ 	​else​
# ​ 	  expression(s)
# ​ 	​end​


defmodule MyList do
	def all?([], _func), do: true

	def all?([ head | tail ], func) do
		func.(head) && all?(tail, func)
	end

	def each([], _func), do: :ok

	def each([ head | tail ], func) do
		func.(head)
		each(tail, func)
	end

	def filter([], _func), do: []

	def filter([ head | tail ], func) do
		if func.(head) do
			[head | filter(tail, func)]
		else
			filter(tail, func)
		end
	end

	# I really struggled with this and eventually had to look up a solution
	# difficult to think so far recursively
	def split([ head | tail ], count) when count > 0 do
		{left, right} = split(tail, count - 1)

		# notes:
		# go all the way down until count == 0 is reached or empty list, removing head element one by one.
		# at "bottom", the remaining list is what's on the right side.
		# as we unwind back up, gradually build up the left side via {[head | left]} and keep right the same.
		# head is the current stack's element, while "left" is the result that we build upwards from the result of calling split.

		{[head | left], right}
	end

	# this is the "bottom". list at this point is what's on the right side. return [] for left to start building up left side.
	def split(list, _count), do: {[], list}

	# let's try this with a concrete example to see what's happening:
	# split([1,2,3], 2)

	# first call:
	# head = 1
	# {left, right} = split([2,3], 1)

	# second call:
	# head = 2
	# {left, right} = split([3], 0)

	# third call:
	# list = [3]
	# {[], [3]}  -> return this

	# walk back to second call:
	# head = 2
	# {left, right} = {[], [3]}
	# {[ 2 | [] ], [3]}   # this is the result for second call

	# walk back to first call:
	# head = 1
	# {left, right} = {[2], [3]}
	# {[1 | [2]], [3]}
	# which is: {[1, 2], [3]}, our expected result.

	def take([head | tail], count) when count > 0 do
		[head | take(tail, count - 1)]
	end

	def take(list, _count), do: []


end