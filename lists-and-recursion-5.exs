# Implement the following Enum functions using no library functions or list comprehensions: all?, each, filter, split, and take. You may need to use an if statement to implement filter. The syntax for this is

# ​ 	​if​ condition ​do​
# ​ 	  expression(s)
# ​ 	​else​
# ​ 	  expression(s)
# ​ 	​end​


defmodule MyList do
	def all?([], func) do
		true
	end

	def all?([ head | tail], func) do
		func.(head) && all?(tail, func)
	end
end