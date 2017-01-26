defmodule Chop do
	def guess(actual, min..max) do		
		target = div(min + max, 2)
		IO.puts "Is it #{target}?"
		guess(actual, min..max, target)
	end

	def guess(actual, _range, actual), do: IO.puts "It's #{actual}!"

	def guess(actual, min.._max, target) when target > actual do		
		guess(actual, min..target)
	end

	def guess(actual, _min..max, target) when target < actual do
		guess(actual, target..max)
	end
end