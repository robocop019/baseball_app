class Player < ApplicationRecord
  belongs_to :team

  def avg
    if (at_bats == 0) 
      avg = 0.0
      avg = ('%.3f' % avg.round(3))
    else 
      avg = hits.to_f / at_bats.to_f
      avg = ('%.3f' % avg.round(3))
    end
    

    if (avg[0] == '0')
      avg[1..-1]
    else
      avg
    end

  end

  def obp
    obp = (hits.to_f + walks.to_f + hbp.to_f) / (at_bats.to_f + walks.to_f + hbp.to_f)
    obp = ('%.3f' % obp.round(3))

    if (obp[0] == '0')
      obp[1..-1]
    else
      obp
    end
  end

  def slg
    if (at_bats == 0) 
      slg = 0.0
      slg = ('%.3f' % slg.round(3))
    else 
      avg = hits.to_f / at_bats.to_f
      avg = ('%.3f' % avg.round(3))
      singles = hits - (doubles + triples + home_runs)
      slg = (singles.to_f + (doubles.to_f * 2) + (triples.to_f * 3) + (home_runs.to_f * 4)) / at_bats
      slg = ('%.3f' % slg.round(3))
    end

    if (slg[0] == '0')
      slg[1..-1]
    else
      slg
    end
  end

  def era
    era = (earned_runs.to_f) * 9.0 / (innings.to_f)
    era = ('%.2f' % era.round(2))
  end
end
