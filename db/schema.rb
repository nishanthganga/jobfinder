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

ActiveRecord::Schema.define(version: 20171026150034) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.integer "years_experience"
    t.integer "months_experience"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "city_id"
    t.string "company_name"
    t.index ["city_id"], name: "index_jobs_on_city_id"
  end

  create_table "jobs_skills", id: false, force: :cascade do |t|
    t.bigint "job_id", null: false
    t.bigint "skill_id", null: false
    t.index ["job_id", "skill_id"], name: "index_jobs_skills_on_job_id_and_skill_id"
    t.index ["skill_id", "job_id"], name: "index_jobs_skills_on_skill_id_and_job_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "programming_platform"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tweets", force: :cascade do |t|
    t.string "tweet_id"
    t.string "name"
    t.string "screen_name"
    t.string "photo_url"
    t.datetime "date"
    t.string "message"
    t.integer "favorite_count"
    t.integer "retweet_count"
    t.bigint "twitter_search_term_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["twitter_search_term_id"], name: "index_tweets_on_twitter_search_term_id"
  end

  create_table "twitter_search_terms", force: :cascade do |t|
    t.string "term"
    t.bigint "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id"], name: "index_twitter_search_terms_on_skill_id"
  end

  add_foreign_key "jobs", "cities"
  add_foreign_key "tweets", "twitter_search_terms"
  add_foreign_key "twitter_search_terms", "skills"
end
