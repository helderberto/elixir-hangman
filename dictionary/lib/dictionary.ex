defmodule Dictionary do
  @moduledoc """
  This is the Dictionary module
  """

  @doc """
  Prints a list of words

  Returns: `:ok`

  ## Examples
    iex> Dictionary.word_list()
    :ok

  """
  def word_list do
    words = File.read!("assets/words.txt")
    String.split(words, ~r/\n/, trim: true)
  end

  @doc """
  Prints a random word from words list

  Returns: `:ok`

  ## Examples
    iex> Dictionary.random_word()
    :ok

  """
  def random_word do
    Enum.random(word_list())
  end
end
