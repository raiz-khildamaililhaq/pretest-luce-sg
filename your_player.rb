require './base_player.rb'

class YourPlayer < BasePlayer
  def next_point(time:)
    # My Stratergy is to walk on continious path from bottom left to bottom right and 
    # continue up to upper right (+1 col) and came back left and continue
    # because it use integer data type it automaticaly round down every row itteration
    # and flip collumn itteration when change

    grid_size = grid.max_col + 1

    row = time / grid_size
    col = even?(row) ? time % max : ((grid_size -1) - (time % grid_size)) 

    {
      row: row ,
      col: col
    }
  end

  def grid
    game.grid
  end
  
  private
  def even?(num)
    (num % 2 ) == 0
  end
end
