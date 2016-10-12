fizzbuzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, c) -> c
end

fizzer = fn
  (n) ->  fizzbuzz.(rem(n, 3), rem(n, 5), n)
end

IO.puts fizzer.(10)
IO.puts fizzer.(11)
IO.puts fizzer.(12)
IO.puts fizzer.(13)
IO.puts fizzer.(14)
IO.puts fizzer.(15)
IO.puts fizzer.(16)
