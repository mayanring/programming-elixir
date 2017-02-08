# Write a function to capitalize the sentences in a string. Each sentence is terminated by a period and a space. Right now, the case of the characters in the string is random.

# ​   ​iex>​ capitalize_sentences(​"​​oh. a DOG. woof. "​)
# ​   "Oh. A dog. Woof."

defmodule MyString do
  def capitalize_sentences(input) do
    String.split(input, ". ")
      |> Enum.map(fn(x) -> String.capitalize(x) end)
      |> Enum.join(". ")
  end
end