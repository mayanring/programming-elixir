# In the last exercise of Chapter 7, ​Lists and Recursion​, you wrote a span function. 
# Use it and list comprehensions to return a list of the prime numbers from 2 to n.

defmodule MyList do
	def span(from, from) do
		[from]
	end

	def span(from, to) when from < to do
		[ from | span(from + 1, to) ]
	end

	def span(from, to) when from > to do
		[ from | span(from - 1, to) ]
	end

	# return a list of primes from 2 to n
	def prime(n) do
		for x <- span(2, n), is_prime(x), do: x
	end

	defp is_prime(n) do
		numbers = span(2, n - 1)
		!Enum.any?(numbers, fn(x) -> rem(n, x) == 0 end)
	end
end
