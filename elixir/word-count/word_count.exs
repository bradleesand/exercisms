defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map
  def count(sentence) do
    List.foldl(
      String.split(
        String.downcase(
          String.replace(sentence, ~r/[^\pL\d-]/, " "))),
      %{},
      fn (x, acc) ->
        elem(Map.get_and_update(acc, x,
          fn value ->
            {value, (value || 0) + 1}
          end), 1)
      end)
  end
end
