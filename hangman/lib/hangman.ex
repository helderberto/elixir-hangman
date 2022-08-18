defmodule Hangman do
  # Get the last part of the path, on this case "Game" will be the alias
  # or you can set with `alias Hangman.Impl.Game, as: Game`
  alias Hangman.Impl.Game
  alias Hangman.Type

  @opaque game :: Game.t()

  @spec new_game() :: game
  def new_game
  defdelegate new_game, to: Game

  @spec make_move(game, String.t()) :: {game, Type.tally}
  def make_move(_game, _guess) do
  end
end
