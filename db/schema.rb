# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_14_222235) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.string "position"
    t.integer "team_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "at_bats"
    t.integer "hits"
    t.integer "doubles"
    t.integer "triples"
    t.integer "home_runs"
    t.integer "runs"
    t.integer "rbis"
    t.integer "stolen_bases"
    t.integer "walks"
    t.integer "hbp"
    t.integer "appearances"
    t.integer "starts"
    t.integer "wins"
    t.integer "losses"
    t.integer "saves"
    t.integer "innings"
    t.integer "hits_given"
    t.integer "runs_given"
    t.integer "earned_runs"
    t.integer "strikeouts"
    t.integer "walks_given"
  end

  create_table "schedules", force: :cascade do |t|
    t.integer "home_team"
    t.integer "away_team"
    t.datetime "date"
    t.string "field"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.integer "wins"
    t.integer "losses"
    t.integer "ties"
    t.text "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
