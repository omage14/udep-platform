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

ActiveRecord::Schema[7.0].define(version: 2022_09_12_235247) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "careers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "careers_subjects", id: false, force: :cascade do |t|
    t.bigint "career_id"
    t.bigint "subject_id"
    t.index ["career_id"], name: "index_careers_subjects_on_career_id"
    t.index ["subject_id"], name: "index_careers_subjects_on_subject_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "maiden_name"
    t.string "email"
    t.string "mobile_phone"
    t.string "curp"
    t.string "phone"
    t.string "gender"
    t.datetime "birthdate"
    t.string "nationality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects_teachers", force: :cascade do |t|
    t.bigint "subject_id"
    t.bigint "teacher_id"
    t.index ["subject_id"], name: "index_subjects_teachers_on_subject_id"
    t.index ["teacher_id"], name: "index_subjects_teachers_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "maiden_name"
    t.string "email"
    t.string "mobile_phone"
    t.string "rfc"
    t.string "curp"
    t.string "phone"
    t.string "gender"
    t.datetime "birthdate"
    t.string "nationality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.boolean "admin", default: false
  end

  add_foreign_key "careers_subjects", "careers"
  add_foreign_key "careers_subjects", "subjects"
  add_foreign_key "subjects_teachers", "subjects"
  add_foreign_key "subjects_teachers", "teachers"
end
