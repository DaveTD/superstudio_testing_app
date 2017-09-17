# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160918233649) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "athletes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "school_id"
    t.integer  "graduation_year"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["school_id"], name: "index_athletes_on_school_id", using: :btree
    t.index ["user_id"], name: "index_athletes_on_user_id", using: :btree
  end

  create_table "colleges", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "game_team_rosters", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "athlete_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["athlete_id"], name: "index_game_team_rosters_on_athlete_id", using: :btree
    t.index ["game_id"], name: "index_game_team_rosters_on_game_id", using: :btree
  end

  create_table "games", force: :cascade do |t|
    t.integer  "sport_id"
    t.integer  "home_school_id"
    t.integer  "away_school_id"
    t.integer  "league_quality"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["away_school_id"], name: "index_games_on_away_school_id", using: :btree
    t.index ["home_school_id"], name: "index_games_on_home_school_id", using: :btree
    t.index ["sport_id"], name: "index_games_on_sport_id", using: :btree
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.string   "country"
    t.integer  "graduation_years"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "scouts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "college_id"
    t.string   "job_title"
    t.string   "permissions_level"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["college_id"], name: "index_scouts_on_college_id", using: :btree
    t.index ["user_id"], name: "index_scouts_on_user_id", using: :btree
  end

  create_table "sports", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_qualifiers", force: :cascade do |t|
    t.integer  "athlete_id"
    t.string   "qualifier_name"
    t.string   "score"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["athlete_id"], name: "index_student_qualifiers_on_athlete_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
