#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


unless League.count > 0
  4.times do |l|
    League.create(name: "League #{l}", skill: Faker::Lorem.sentence)
  end

  20.times do |t|
      Team.create(name: Faker::Company.name, league_id: rand(4))
  end

  60.times do |p|
    Player.create(name: Faker::Name.name, team_id: rand(20))
  end
end
