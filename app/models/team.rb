class Team < ApplicationRecord
  has_many :players

  def differential
    win_total = wins.to_f 
    loss_total = losses.to_f 
    differential = (win_total - loss_total) / 2 
  end

  # def games_back
  #     gb = .5
  # end
end
