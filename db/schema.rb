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

ActiveRecord::Schema.define(version: 20171116125348) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
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
    t.string "slug"
    t.index ["skill_id"], name: "index_twitter_search_terms_on_skill_id"
  end

  add_foreign_key "jobs", "cities"
  add_foreign_key "tweets", "twitter_search_terms"
  add_foreign_key "twitter_search_terms", "skills"
end
