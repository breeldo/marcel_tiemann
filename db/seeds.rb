# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
class AddInitialRaces < ActiveRecord::Migration[5.0]
  def up
    race = Race.create(name: "24 hours Nürburgring", date: "2003-11-12",
                finish_place: 1, time: 12)
    race.injuries.create(body_part: "arm", injury_date: race.date,
                      broken: true,
                      severity: 1,
                      recovery_date: "2003-11-13",)

  end
end

