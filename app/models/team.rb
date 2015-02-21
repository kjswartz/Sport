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
  has_many :players, dependent: :destroy

  #validations
  validates :league, presence: true
  validates :name, presence: true, uniqueness: { case_sensitive: false }

end
