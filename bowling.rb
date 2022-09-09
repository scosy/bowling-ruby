class Bowling
  @@score = 0
  @@bonus_strike = false
  @@bonus_spare = false
  @@i = 0
  @@previous_roll = 0

  def roll(pins_down)
  if @@bonus_spare
    @@bonus_spare = false
    roll_with_bonus(pins_down)
    return
  end

  if @@bonus_strike
    roll_with_bonus(pins_down)
    @@i += 1
    if @@i == 2
      @@bonus_strike = false
      @@i = 0
    end
    return
  end

  @@score += pins_down
  @@bonus_strike = true if pins_down == 10
  @@bonus_spare = true if @@previous_roll + pins_down == 10
  @@previous_roll = pins_down
  nil
  end

  def roll_with_bonus(pins_down)
    @@score += pins_down * 2
  end

  def score
    @@score
  end
end
