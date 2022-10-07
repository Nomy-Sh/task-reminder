ActiveRecord::Schema[7.0].define(version: 2022_10_07_144553) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tasks", force: :cascade do |t|
    t.integer "task_id"
    t.string "title"
    t.text "desc"
    t.string "time"
    t.string "day"
    t.string "date"
    t.string "tags"
    t.string "status"
    t.string "entity_type"
    t.string "priority"
    t.string "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
