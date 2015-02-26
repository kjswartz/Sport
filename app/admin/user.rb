ActiveAdmin.register User do

  permit_params(:name, :email, :team_ids, :avatar, :avatar_cache, :remove_avatar, team_ids: [])

  form do |f|
    inputs '' do
      input :name
      input :email
      input :avatar
      input :teams, as: :check_boxes
    end
    actions
  end

  index do
    column :id
    column "Profile Pic" do |user|
      image_tag user.avatar.url(:thumb)
    end
    column :name
    column :email
    column "Teams" do |user|
      user.teams.count
    end
    actions
  end

end
