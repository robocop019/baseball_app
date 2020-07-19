class Player < ApplicationRecord
  belongs_to :team

  def avg
    avg = hits.to_f / at_bats.to_f
    avg = ('%.3f' % avg.round(3))

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
    singles = hits - (doubles + triples + home_runs)
    slg = (singles.to_f + (doubles.to_f * 2) + (triples.to_f * 3) + (home_runs.to_f * 4)) / at_bats
     slg = ('%.3f' % slg.round(3))

    if (slg[0] == '0')
      slg[1..-1]
    else
      slg
    end
  end
end
