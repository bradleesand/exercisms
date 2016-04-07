defmodule Bob do
  def hey(input) do
    cond do
      String.last(input) == "?" -> "Sure."
      Regex.match?(~r/^ *$/, input) -> "Fine. Be that way!"
      Regex.match?(~r/\pL/, input) && String.upcase(input) == input -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end
end
