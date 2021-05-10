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

ActiveRecord::Schema.define(version: 2021_05_10_105603) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_requireds", force: :cascade do |t|
    t.datetime "datetime"
    t.string "name"
    t.string "phone"
    t.string "address"
    t.string "category"
    t.string "ref_number"
    t.text "remarks"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "incident_id"
  end

  create_table "causes", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "classifications", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name", null: false
    t.string "code", null: false
    t.text "boundingbox"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "incidentattachments", force: :cascade do |t|
    t.bigint "incident_id", null: false
    t.string "filepath", null: false
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "attachment_file_name"
    t.string "attachment_content_type"
    t.bigint "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.index ["incident_id"], name: "index_incidentattachments_on_incident_id"
  end

  create_table "incidentcategories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "incidentfollowups", force: :cascade do |t|
    t.bigint "incident_id", null: false
    t.string "status", null: false
    t.text "comment", null: false
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["incident_id"], name: "index_incidentfollowups_on_incident_id"
  end

  create_table "incidents", force: :cascade do |t|
    t.bigint "incidentcategory_id"
    t.date "date_time", null: false
    t.decimal "longitude"
    t.decimal "latitude"
    t.string "address"
    t.text "description"
    t.string "status", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.string "activity"
    t.text "prevention"
    t.text "injured_parts"
    t.text "cause"
    t.index ["incidentcategory_id"], name: "index_incidents_on_incidentcategory_id"
  end

  create_table "incidentsubcategories", force: :cascade do |t|
    t.bigint "incidentcategory_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["incidentcategory_id"], name: "index_incidentsubcategories_on_incidentcategory_id"
  end

  create_table "incidentworkflows", force: :cascade do |t|
    t.bigint "incident_id", null: false
    t.bigint "workflowtemplate_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["incident_id"], name: "index_incidentworkflows_on_incident_id"
    t.index ["workflowtemplate_id"], name: "index_incidentworkflows_on_workflowtemplate_id"
  end

  create_table "injurylocations", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "injurytypes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "investigationactions", force: :cascade do |t|
    t.bigint "investigation_id", null: false
    t.string "action"
    t.string "resposibility"
    t.date "target_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["investigation_id"], name: "index_investigationactions_on_investigation_id"
  end

  create_table "investigationcauses", force: :cascade do |t|
    t.bigint "investigation_id", null: false
    t.bigint "cause_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cause_id"], name: "index_investigationcauses_on_cause_id"
    t.index ["investigation_id"], name: "index_investigationcauses_on_investigation_id"
  end

  create_table "investigationclassifications", force: :cascade do |t|
    t.bigint "investigation_id", null: false
    t.bigint "subclassification_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["investigation_id"], name: "index_investigationclassifications_on_investigation_id"
    t.index ["subclassification_id"], name: "index_investigationclassifications_on_subclassification_id"
  end

  create_table "investigationcosts", force: :cascade do |t|
    t.bigint "investigation_id", null: false
    t.string "item"
    t.float "amount"
    t.string "currency"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["investigation_id"], name: "index_investigationcosts_on_investigation_id"
  end

  create_table "investigationequipments", force: :cascade do |t|
    t.bigint "investigation_id", null: false
    t.string "equipment"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["investigation_id"], name: "index_investigationequipments_on_investigation_id"
  end

  create_table "investigationinjurylocations", force: :cascade do |t|
    t.bigint "investigation_id", null: false
    t.bigint "injurylocation_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["injurylocation_id"], name: "index_investigationinjurylocations_on_injurylocation_id"
    t.index ["investigation_id"], name: "index_investigationinjurylocations_on_investigation_id"
  end

  create_table "investigationinjurytypes", force: :cascade do |t|
    t.bigint "investigation_id", null: false
    t.bigint "injurytype_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["injurytype_id"], name: "index_investigationinjurytypes_on_injurytype_id"
    t.index ["investigation_id"], name: "index_investigationinjurytypes_on_investigation_id"
  end

  create_table "investigations", force: :cascade do |t|
    t.bigint "incident_id", null: false
    t.bigint "user_id", null: false
    t.string "report_number"
    t.datetime "date"
    t.bigint "department_id", null: false
    t.string "status"
    t.boolean "reportable_to_legal"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["department_id"], name: "index_investigations_on_department_id"
    t.index ["incident_id"], name: "index_investigations_on_incident_id"
    t.index ["user_id"], name: "index_investigations_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "district"
    t.string "village"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "otps", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_otps_on_user_id"
  end

  create_table "settings", force: :cascade do |t|
    t.string "key"
    t.string "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "subclassifications", force: :cascade do |t|
    t.bigint "classification_id", null: false
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["classification_id"], name: "index_subclassifications_on_classification_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "role", null: false
    t.string "name", null: false
    t.string "phone"
    t.string "category"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "victims", force: :cascade do |t|
    t.bigint "incident_id", null: false
    t.string "name"
    t.string "contact"
    t.text "remark"
    t.string "role"
    t.boolean "employee"
    t.string "address"
    t.string "email"
    t.string "supervisor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["incident_id"], name: "index_victims_on_incident_id"
  end

  create_table "witnesses", force: :cascade do |t|
    t.bigint "incident_id", null: false
    t.string "name"
    t.string "contact"
    t.text "remark"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["incident_id"], name: "index_witnesses_on_incident_id"
  end

  create_table "workflowtemplates", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.text "responsible_party"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "incidentsubcategories", "incidentcategories"
  add_foreign_key "incidentworkflows", "incidents"
  add_foreign_key "incidentworkflows", "workflowtemplates"
  add_foreign_key "investigationactions", "investigations"
  add_foreign_key "investigationcauses", "causes"
  add_foreign_key "investigationcauses", "investigations"
  add_foreign_key "investigationclassifications", "investigations"
  add_foreign_key "investigationclassifications", "subclassifications"
  add_foreign_key "investigationcosts", "investigations"
  add_foreign_key "investigationequipments", "investigations"
  add_foreign_key "investigationinjurylocations", "injurylocations"
  add_foreign_key "investigationinjurylocations", "investigations"
  add_foreign_key "investigationinjurytypes", "injurytypes"
  add_foreign_key "investigationinjurytypes", "investigations"
  add_foreign_key "investigations", "departments"
  add_foreign_key "investigations", "incidents"
  add_foreign_key "investigations", "users"
  add_foreign_key "otps", "users"
  add_foreign_key "subclassifications", "classifications"
  add_foreign_key "victims", "incidents"
  add_foreign_key "witnesses", "incidents"
end
