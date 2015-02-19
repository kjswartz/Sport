# == Schema Information
#
# Table name: team_players
#
#  id         :integer          not null, primary key
#  player_id  :integer
#  team_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TeamPlayer < ActiveRecord::Base
  belongs_to :player
  belongs_to :team
end
