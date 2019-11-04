class Match < ApplicationRecord
  belongs_to :winner, class_name: 'Team', foreign_key: :winner_id, optional: true
  belongs_to :looser, class_name: 'Team', foreign_key: :looser_id, optional: true
  belongs_to :team1, class_name: 'Team', foreign_key: :team1_id
  belongs_to :team2, class_name: 'Team', foreign_key: :team2_id

  scope :scheduled, -> { where.not(scheduled_at: nil)}
  scope :played, -> { where.not(winner_id: nil, looser_id: nil, score_winner: nil, score_looser: nil) }

  def played?
    winner_id.present? &&
      looser_id.present? &&
      score_looser &&
      score_winner
  end

  def scheduled?
    scheduled_at.present? && !played?
  end

  def title
    if played?
      "Victoire de #{winner.name} <span>#{score_winner} - #{score_looser}</span>"
    elsif scheduled?
      "Prochainement"
    else
      ""
    end
  end

  def team1_style
    if team1_id == winner_id
      'margin-top: 0px; background-color: #115906;'
    else
      'margin-top: 0px;'
    end
  end

  def team2_style
    if team2_id == winner_id
      'margin-top: 0px; background-color: #115906;'
    else
      'margin-top: 0px;'
    end
  end
end
