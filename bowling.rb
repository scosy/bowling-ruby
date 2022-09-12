# frozen_string_literal: true

class Bowling
  def initialize(score)
    @score = score
  end

  def roll(pins_down)
    @score << pins_down
    nil
  end

  def score
    @score.reverse!.map!.with_index do |n, i|
      break if i > @score.size - 3

      if @score[i + 2] == 10
        @score[i + 1] *= 2
        n > 10 ? n : n * 2
      elsif @score[i + 1] + @score[i + 2] == 10
        n * 2
      else
        n
      end
    end
  end
end
