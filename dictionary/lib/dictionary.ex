defmodule Dictionary do
  @moduledoc """
  This is the Dictionary module
  """
  @word_list "assets/words.txt"
             |> File.read!()
             |> String.split(~r/\n/, trim: true)

  @doc """
  Prints a random word from words list

  Returns: `:ok`

  ## Examples
    iex> Dictionary.random_word()
    :ok

  """
  def random_word do
    @word_list
    |> Enum.random()
  end
end
