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
  belongs_to :team

  mount_uploader :avatar, AvatarUploader

  #validations
  validates :team, presence: true
  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
