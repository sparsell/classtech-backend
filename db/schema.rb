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

ActiveRecord::Schema.define(version: 2021_10_12_095302) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "student_id"
    t.text "screen_time_comment"
    t.index ["student_id"], name: "index_comments_on_student_id"
  end

  create_table "grades", force: :cascade do |t|
    t.string "grade_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "school_grades", force: :cascade do |t|
    t.integer "school_id"
    t.integer "grade_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "school_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.boolean "has_phone"
    t.boolean "has_other_device"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "school_id"
    t.bigint "grade_id"
    t.index ["grade_id"], name: "index_students_on_grade_id"
    t.index ["school_id"], name: "index_students_on_school_id"
  end

  add_foreign_key "comments", "students"
end
