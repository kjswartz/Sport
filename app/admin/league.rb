ActiveAdmin.register League do

  permit_params(:name, :skill)
  index do
    column :id
    column :name
    column :skill
    column "Team Count" do |league|
      league.teams.count
    end

    actions
  end
end
