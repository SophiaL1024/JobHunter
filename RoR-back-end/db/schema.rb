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

ActiveRecord::Schema.define(version: 2021_08_26_002847) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.text "follow_up"
    t.text "reach_out"
    t.text "send_thank_you"
    t.text "prep_interview"
    t.text "prep_cover_letter"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "job_id", null: false
    t.index ["job_id"], name: "index_activities_on_job_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "interviews", force: :cascade do |t|
    t.integer "round"
    t.string "interviewer"
    t.string "interviewer_email"
    t.date "date"
    t.text "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "job_id", null: false
    t.index ["job_id"], name: "index_interviews_on_job_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.date "deadline"
    t.text "note"
    t.integer "status"
    t.date "applied_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "company_id", null: false
    t.index ["company_id"], name: "index_jobs_on_company_id"
  end

  add_foreign_key "activities", "jobs"
  add_foreign_key "interviews", "jobs"
  add_foreign_key "jobs", "companies"
end