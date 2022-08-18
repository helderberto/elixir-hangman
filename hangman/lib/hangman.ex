defmodule Hangman do
  # Get the last part of the path, on this case "Game" will be the alias
  # or you can set with `alias Hangman.Impl.Game, as: Game`
  alias Hangman.Impl.Game

  @type state :: :initializing | :won | :lost | :good_guess | :bad_guess | :already_used
  @type game :: any
  @type tally :: %{
          turns_left: integer,
          game_state: state,
          letters: list(String.t()),
          used: list(String.t())
        }

  @spec new_game() :: game
  def new_game
  defdelegate new_game, to: Game

  @spec make_move(game, String.t()) :: {game, tally}
  def make_move(_game, _guess) do
  end
end
