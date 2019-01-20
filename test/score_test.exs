
defmodule ScoreTest do
  use ExUnit.Case
  doctest Score

  test "greets the world" do
    assert Score.hello() == :world
  end
  test "Game with no score should return love all" do
    assert Score.get_spoken_score({ 0, 0 }) == "love all"
  end
  test "Game with 1 point to 0 should return fifteen, love" do
    assert Score.get_spoken_score({ 1, 0 }) == "fifteen, love"
  end
  test "Game with 1 points to 1 should return fitfeen all" do
    assert Score.get_spoken_score({ 1, 1 }) == "fifteen all"
  end
  test "Game with 2 point to 1 should return thirty fifteen" do
    assert Score.get_spoken_score({ 2, 1 }) == "thirty, fifteen"
  end
  test "Game with 3 points to 1 should return forty fifteen" do
    assert Score.get_spoken_score({ 3, 1 }) == "forty, fifteen"
  end
  test "Game with 4 points to 4 should return deuce" do
    assert Score.get_spoken_score({ 4, 4 }) == "deuce"
  end
  test "Game with 5 points to 4 should return advantage playerOne" do
    assert Score.get_spoken_score({ 5, 4 }) == "advantage PlayerOne"
  end
  test "Game with 6 points to 4 should return PlayerOne Won" do
    assert Score.get_spoken_score({ 6, 4 }) == "PlayerOne Won"
  end
  test "Game with 4 points to 6 should return PlayerTwo Won" do
    assert Score.get_spoken_score({ 4, 6 }) == "PlayerTwo Won"
  end
  test "Game with 4 points to 2 should return PlayerTwo Won" do
    assert Score.get_spoken_score({ 4, 2 }) == "PlayerOne Won"
  end
  
  test "give good annonce from score" do
    assert Score.speak_score(0) == "love"
    assert Score.speak_score(1) == "fifteen"
    assert Score.speak_score(2) == "thirty"
    assert Score.speak_score(3) == "forty"
    assert Score.speak_score(4) == "forty"
  end
end
