defmodule Chop do
	def guess(actual, range = min..max) do
		target = div(min + max, 2)
		guess(actual, range, target)
	end

	def guess(actual, _range, actual) do
		IO.puts "It's #{actual}!"
	end

	def guess(actual, min.._max, target) when target > actual do
		IO.puts "Is it #{target}?"
		new_target = div(min + target, 2)
		guess(actual, min..target, new_target)
	end

	def guess(actual, _min..max, target) when target < actual do
		IO.puts "Is it #{target}?"
		new_target = div(target + max, 2)
		guess(actual, target..max, new_target)
	end
end