# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


team1 = App::Team.create!(name: "UofL")
team2 = App::Team.create!(name: "UK")
team3 = App::Team.create!(name: "UT")
team4 = App::Team.create!(name: "Duke")

App::Game.create!(date: 9.days.ago, location: "Lville", first_team_id: team1.id, second_team_id: team2.id, winning_team: 1, first_team_score: 1, second_team_score: 2)
App::Game.create!(date: 8.days.ago, location: "Lville", first_team_id: team1.id, second_team_id: team3.id, winning_team: 1, first_team_score: 1, second_team_score: 2)
App::Game.create!(date: 7.days.ago, location: "Lville", first_team_id: team1.id, second_team_id: team4.id, winning_team: 1, first_team_score: 2, second_team_score: 1)
App::Game.create!(date: 6.days.ago, location: "Lville", first_team_id: team2.id, second_team_id: team3.id, winning_team: 1, first_team_score: 1, second_team_score: 2)
App::Game.create!(date: 5.days.ago, location: "Lville", first_team_id: team2.id, second_team_id: team4.id, winning_team: 1, first_team_score: 1, second_team_score: 2)
App::Game.create!(date: 4.days.ago, location: "Lville", first_team_id: team3.id, second_team_id: team4.id, winning_team: 1, first_team_score: 1, second_team_score: 2)
