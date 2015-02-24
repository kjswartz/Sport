#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


unless League.count > 0
  4.times do |l|
    League.create(name: "League #{l}", skill: Faker::Lorem.sentence)
  end
end

unless Team.count > 0
  rand_league_id = League.pluck(:id).shuffle[0..4]
  12.times do |t|
    Team.create(name: Faker::Company.name, league_id: rand_league_id.sample)
  end
end

unless Player.count > 0
  rand_team_id = Team.pluck(:id).shuffle[0..12]
  40.times do |p|
    Player.create(name: Faker::Name.name, team_ids: rand_team_id.sample(rand(3)))
  end
end
