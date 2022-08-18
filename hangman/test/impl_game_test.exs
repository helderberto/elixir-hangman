defmodule HangmanImplGameTest do
  use ExUnit.Case
  alias Hangman.Impl.Game

  test "new game returns structure" do
    game = Game.new_game()

    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert length(game.letters) > 0
  end

  test "new game returns correct word" do
    game = Game.new_game("porto")

    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert game.letters == ["p", "o", "r", "t", "o"]
  end

  test "state doesn't change if a game is won or lost" do
    for state <- [:won, :lost] do
    game = Game.new_game("porto")
    game = Map.put(game, :game_state, state)
    {new_game, _tally} = Game.make_move(game, "x")
    assert new_game == game
      end
  end
end
