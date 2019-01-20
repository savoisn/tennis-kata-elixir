defmodule Score do
  @moduledoc """
  Documentation for Score.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Score.hello()
      :world

  """
  import Match

  def hello do
    :world
  end

  def get_spoken_score({score_one, score_two})
      when score_one == score_two do
    speak(score_one, score_two, :equal)
  end

  def get_spoken_score({score_one, score_two}) do
    speak(score_one, score_two, :notequal)
  end

  def speak(score_one, _, :equal) when score_one >= 4 do
    "deuce"
  end

  def speak(score_one, score_two, :notequal)
      when player_one_won?(score_one, score_two) do
    "PlayerOne Won"
  end

  def speak(score_one, score_two, :notequal)
      when player_two_won?(score_one, score_two) do
    "PlayerTwo Won"
  end

  def speak(score_one, score_two, :notequal)
      when score_one >= 4 and score_one > score_two do
    "advantage PlayerOne"
  end

  def speak(score_one, score_two, :notequal)
      when score_one >= 4 and score_one < score_two do
    "advantage PlayerTwo"
  end

  def speak(score_one, _, :equal) do
    "#{speak_score(score_one)} all"
  end

  def speak(score_one, score_two, :notequal) do
    "#{speak_score(score_one)}, #{speak_score(score_two)}"
  end

  def speak_score(score) do
    case score do
      0 -> "love"
      1 -> "fifteen"
      2 -> "thirty"
      3 -> "forty"
      _ -> "forty"
    end
  end
end
