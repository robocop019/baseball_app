class Player < ApplicationRecord
  belongs_to :team

  def avg
    avg = hits.to_f / at_bats.to_f
    avg.round(3)
  end

  def obp
    obp = (hits.to_f + walks.to_f + hbp.to_f) / (at_bats.to_f + walks.to_f + hbp.to_f)
    obp.round(3)
  end

  def slg
    
  end
end
