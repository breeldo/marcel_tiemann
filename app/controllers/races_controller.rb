class RacesController < ApplicationController
  def index
    race = Race.find_or_create_by(name: 'coopers-hill')

    @injury = Injury.new(race: race)
  end
end
