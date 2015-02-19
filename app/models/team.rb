# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  league_id  :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Team < ActiveRecord::Base
  #associations
  belongs_to :league
  has_many :team_players
  has_many :players, through: :team_players

  #validations
  validates :name, presence: true
end
