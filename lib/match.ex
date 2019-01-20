defmodule Match do
  # defstruct score_one: 0,  score_two: 0

  defmacro player_one_won?(score_one, score_two) do
    quote do:
            unquote(score_one) >= 4 and 
              abs(unquote(score_one) - unquote(score_two)) >= 2 and
              unquote(score_one) > unquote(score_two)
  end
  defmacro player_two_won?(score_one, score_two) do
    quote do:
            unquote(score_one) >= 4 and 
              abs(unquote(score_one) - unquote(score_two)) >= 2 and
              unquote(score_one) < unquote(score_two)
  end
end
