# Write a function MyList.span(from, to) that returns a list of the numbers from from up to to.

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
end
