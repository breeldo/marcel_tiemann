# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_30_194650) do

  create_table "injuries", force: :cascade do |t|
    t.string "body_part"
    t.date "injury_date"
    t.boolean "broken"
    t.integer "severity"
    t.date "recovery_date"
    t.integer "race_id"
    t.index ["race_id"], name: "index_injuries_on_race_id"
  end

  create_table "races", force: :cascade do |t|
    t.date "date"
    t.string "name"
    t.integer "time"
    t.integer "finish_place"
  end

end
