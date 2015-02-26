ActiveAdmin.register Team do

  permit_params(:name, :league_id, :user_ids)

  # form do |f|
  #   inputs '' do
  #     input :name
  #     input :email
  #     input :avatar
  #     input :teams, as: :check_boxes
  #   end
  #   actions
  # end

  index do
    column :id
    column :name
    column "Player Count" do |team|
      team.users.count
    end
    actions
  end

end
