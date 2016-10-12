prefix = fn
  (first) -> (fn (second) -> "#{first} #{second}" end)
end

mister = prefix.("Mr.")
result = mister.("Ming")

IO.puts result
