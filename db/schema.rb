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

ActiveRecord::Schema.define(version: 2021_08_17_163922) do

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "parent_group_id", null: false
    t.integer "tenant_id", null: false
    t.integer "owner_id", null: false
    t.index ["owner_id"], name: "index_groups_on_owner_id"
    t.index ["parent_group_id"], name: "index_groups_on_parent_group_id"
    t.index ["tenant_id"], name: "index_groups_on_tenant_id"
  end

  create_table "initiatives", force: :cascade do |t|
    t.integer "status"
    t.text "editors"
    t.text "viewers"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "labels", force: :cascade do |t|
    t.string "name"
    t.text "notes"
    t.string "colour"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "group_id", null: false
    t.integer "tenant_id", null: false
    t.integer "owner_id", null: false
    t.index ["group_id"], name: "index_labels_on_group_id"
    t.index ["owner_id"], name: "index_labels_on_owner_id"
    t.index ["tenant_id"], name: "index_labels_on_tenant_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "location_name"
    t.string "unit"
    t.string "street1"
    t.string "street2"
    t.string "town"
    t.string "county"
    t.string "country"
    t.string "postcode"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "tenant_id", null: false
    t.index ["tenant_id"], name: "index_locations_on_tenant_id"
  end

  create_table "notes", force: :cascade do |t|
    t.text "details"
    t.integer "status"
    t.text "editors"
    t.text "viewers"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "owner_id", null: false
    t.index ["owner_id"], name: "index_notes_on_owner_id"
  end

  create_table "permissions", force: :cascade do |t|
    t.string "name"
    t.text "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "created_by_id", null: false
    t.integer "updated_by_id", null: false
    t.index ["created_by_id"], name: "index_permissions_on_created_by_id"
    t.index ["updated_by_id"], name: "index_permissions_on_updated_by_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.text "notes"
    t.text "details"
    t.text "editors"
    t.text "viewers"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "owner_id", null: false
    t.index ["owner_id"], name: "index_projects_on_owner_id"
  end

  create_table "task_times", force: :cascade do |t|
    t.text "notes"
    t.integer "minutes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "task_id", null: false
    t.integer "user_id", null: false
    t.index ["task_id"], name: "index_task_times_on_task_id"
    t.index ["user_id"], name: "index_task_times_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.integer "priority"
    t.integer "status"
    t.text "notes"
    t.integer "visibility"
    t.datetime "received_date"
    t.datetime "start_date"
    t.datetime "due_date"
    t.datetime "end_date"
    t.integer "parent_task"
    t.text "labels"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "owner_id", null: false
    t.integer "group_id", null: false
    t.integer "tenant_id", null: false
    t.integer "project_id", null: false
    t.index ["group_id"], name: "index_tasks_on_group_id"
    t.index ["owner_id"], name: "index_tasks_on_owner_id"
    t.index ["project_id"], name: "index_tasks_on_project_id"
    t.index ["tenant_id"], name: "index_tasks_on_tenant_id"
  end

  create_table "tenants", force: :cascade do |t|
    t.string "company_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.integer "admin_id", null: false
    t.integer "billing_id", null: false
    t.integer "tech_id", null: false
    t.integer "mainsite_id", null: false
    t.index ["admin_id"], name: "index_tenants_on_admin_id"
    t.index ["billing_id"], name: "index_tenants_on_billing_id"
    t.index ["mainsite_id"], name: "index_tenants_on_mainsite_id"
    t.index ["tech_id"], name: "index_tenants_on_tech_id"
    t.index ["user_id"], name: "index_tenants_on_user_id"
  end

  create_table "todo_items", force: :cascade do |t|
    t.string "title"
    t.boolean "complete", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "owner_id", null: false
    t.index ["owner_id"], name: "index_todo_items_on_owner_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "tenant_id", null: false
    t.integer "location_id", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["location_id"], name: "index_users_on_location_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["tenant_id"], name: "index_users_on_tenant_id"
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "groups", "groups", column: "parent_group_id"
  add_foreign_key "groups", "tenants"
  add_foreign_key "groups", "users", column: "owner_id"
  add_foreign_key "labels", "groups"
  add_foreign_key "labels", "tenants"
  add_foreign_key "labels", "users", column: "owner_id"
  add_foreign_key "locations", "tenants"
  add_foreign_key "notes", "users", column: "owner_id"
  add_foreign_key "permissions", "users", column: "created_by_id"
  add_foreign_key "permissions", "users", column: "updated_by_id"
  add_foreign_key "projects", "users", column: "owner_id"
  add_foreign_key "task_times", "tasks"
  add_foreign_key "task_times", "users"
  add_foreign_key "tasks", "groups"
  add_foreign_key "tasks", "projects"
  add_foreign_key "tasks", "tenants"
  add_foreign_key "tasks", "users", column: "owner_id"
  add_foreign_key "tenants", "locations", column: "mainsite_id"
  add_foreign_key "tenants", "users"
  add_foreign_key "tenants", "users", column: "admin_id"
  add_foreign_key "tenants", "users", column: "billing_id"
  add_foreign_key "tenants", "users", column: "tech_id"
  add_foreign_key "todo_items", "users", column: "owner_id"
  add_foreign_key "users", "locations"
  add_foreign_key "users", "tenants"
end
