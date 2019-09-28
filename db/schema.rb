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

ActiveRecord::Schema.define(version: 2019_09_28_150750) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "genres", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.index ["name"], name: "index_genres_on_name"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title", limit: 255, null: false
    t.bigint "genre_id", null: false
    t.integer "number_in_stock", null: false
    t.decimal "daily_rental_rate", precision: 3, scale: 1, null: false
    t.index ["genre_id"], name: "index_movies_on_genre_id"
    t.index ["title"], name: "index_movies_on_title"
  end

end
