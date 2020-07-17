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
    singles = hits - (doubles + triples + home_runs)
    slg = (singles.to_f + (doubles.to_f * 2) + (triples.to_f * 3) + (home_runs.to_f * 4)) / at_bats
    slg.round(3)
  end
end
