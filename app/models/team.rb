class Team < ApplicationRecord
  has_one_attached :image
  has_many :players

  validates :name, presence: true
  validates :punchline, presence: true
  validates :long_description, presence: true
  has_many :winning_matches, class_name: 'Match', foreign_key: :winner_id
  has_many :loosing_matches, class_name: 'Match', foreign_key: :looser_id
  has_many :team1_matches, class_name: 'Match', foreign_key: :team1_id
  has_many :team2_matches, class_name: 'Match', foreign_key: :team2_id
  
  
  def all_matches
    team1_matches.or(team2_matches).order(:scheduled_at)
  end
end
