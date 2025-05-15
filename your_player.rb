require './base_player.rb'

class YourPlayer < BasePlayer
  def next_point(time:)
    # Implement your strategy here.
    max = grid.max_col + 1

    row = time / max
    col = even?(row) ? time % max : ( grid.max_col - (time % max) ) 

    {
      row: row ,
      col: col
    }
  end

  def even?(num)
    (num % 2 ) == 0
  end

  def grid
    game.grid
  end
end
