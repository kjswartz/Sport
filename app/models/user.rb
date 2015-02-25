# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  avatar     :string
#  email      :string
#

class User < ActiveRecord::Base
  #associations
  has_many :playerizations, dependent: :destroy
  has_many :teams, through: :playerizations

  mount_uploader :avatar, AvatarUploader

  #validations
  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
