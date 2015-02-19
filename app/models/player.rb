# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Player < ActiveRecord::Base
  #associations
  has_many :team_players
  has_many :teams, through: :team_players

  #validations
  validates :name, presence: true

end
