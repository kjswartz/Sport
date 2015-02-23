#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


unless League.count > 0
  5.times do |l|
    League.create(name: "League #{l}", skill: Faker::Lorem.words(5))
      5.times do |t|
        Team.create(name: Faker::Company.name, created_at: Faker::Date.between(30.days.ago, Date.today), league_id: t)
          5.times do |p|
            Player.create(name: Faker::Name.name, created_at: Faker::Date.between(30.days.ago, Date.today), team_id: p)
          end
      end
  end
end
