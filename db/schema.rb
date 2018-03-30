# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20180329082107) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "allergies", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "allergy_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "allergies", ["user_id"], name: "index_allergies_on_user_id", using: :btree

  create_table "medicines", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "medicine_name"
    t.string   "medicine_img",  default: "", null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "medicines", ["user_id"], name: "index_medicines_on_user_id", using: :btree

  create_table "past_medical_histories", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "icd_code"
    t.boolean  "brain_disease_in_the_past",   default: false, null: false
    t.boolean  "heart_disease_in_the_past",   default: false, null: false
    t.boolean  "surgery_in_the_past",         default: false, null: false
    t.boolean  "hospitalized_in_the_past",    default: false, null: false
    t.boolean  "attending_to_a_hospital_now", default: false, null: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  add_index "past_medical_histories", ["user_id"], name: "index_past_medical_histories_on_user_id", using: :btree

  create_table "patient_backgrounds", force: :cascade do |t|
    t.string   "name",                               null: false
    t.date     "birthday",                           null: false
    t.string   "sex",                                null: false
    t.integer  "country",     limit: 2, default: 0,  null: false
    t.integer  "hight",                              null: false
    t.integer  "weight",                             null: false
    t.string   "occupation",            default: ""
    t.string   "religion",              default: ""
    t.text     "notes",                 default: ""
    t.string   "profile_url",           default: ""
    t.integer  "user_id",                            null: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "symptoms", force: :cascade do |t|
    t.integer  "user_id"
    t.boolean  "General_weight_loss_or_gain",                                     default: false, null: false
    t.boolean  "General_fatigue",                                                 default: false, null: false
    t.boolean  "General_fever_or_chills",                                         default: false, null: false
    t.boolean  "General_weakness",                                                default: false, null: false
    t.boolean  "General_trouble_sleeping",                                        default: false, null: false
    t.boolean  "Skin_rashes",                                                     default: false, null: false
    t.boolean  "Skin_lumps",                                                      default: false, null: false
    t.boolean  "Skin_itching",                                                    default: false, null: false
    t.boolean  "Skin_dryness",                                                    default: false, null: false
    t.boolean  "Skin_color_changes",                                              default: false, null: false
    t.boolean  "Skin_hair_and_nail_changes",                                      default: false, null: false
    t.boolean  "Head_headache",                                                   default: false, null: false
    t.boolean  "Head_head_injury",                                                default: false, null: false
    t.boolean  "Head_neck_Pain",                                                  default: false, null: false
    t.boolean  "Ears_decreased_hearing",                                          default: false, null: false
    t.boolean  "Ears_ringing_in_ears",                                            default: false, null: false
    t.boolean  "Ears_earache",                                                    default: false, null: false
    t.boolean  "Ears_drainage",                                                   default: false, null: false
    t.boolean  "Eyes_vision_loss_Changes",                                        default: false, null: false
    t.boolean  "Eyes_glasses_or_contacts",                                        default: false, null: false
    t.boolean  "Eyes_pain",                                                       default: false, null: false
    t.boolean  "Eyes_redness",                                                    default: false, null: false
    t.boolean  "Eyes_blurry_or_double_vision",                                    default: false, null: false
    t.boolean  "Eyes_flashing_lights",                                            default: false, null: false
    t.boolean  "Eyes_specks",                                                     default: false, null: false
    t.boolean  "Eyes_glaucoma",                                                   default: false, null: false
    t.boolean  "Eyes_cataracts",                                                  default: false, null: false
    t.boolean  "Eyes_last_eye_exam",                                              default: false, null: false
    t.boolean  "Nose_stuffiness",                                                 default: false, null: false
    t.boolean  "Nose_discharge",                                                  default: false, null: false
    t.boolean  "Nose_itching",                                                    default: false, null: false
    t.boolean  "Nose_hay_fever",                                                  default: false, null: false
    t.boolean  "Nose_nosebleeds",                                                 default: false, null: false
    t.boolean  "Nose_sinus_pain",                                                 default: false, null: false
    t.boolean  "Throat_bleeding",                                                 default: false, null: false
    t.boolean  "Throat_dentures",                                                 default: false, null: false
    t.boolean  "Throat_sore_tongue",                                              default: false, null: false
    t.boolean  "Throat_dry_mouth",                                                default: false, null: false
    t.boolean  "Throat_sore_throat",                                              default: false, null: false
    t.boolean  "Throat_hoarseness",                                               default: false, null: false
    t.boolean  "Throat_thrush",                                                   default: false, null: false
    t.boolean  "Throat_non_healing_sores",                                        default: false, null: false
    t.boolean  "Neck_lumps",                                                      default: false, null: false
    t.boolean  "Neck_swollen_glands",                                             default: false, null: false
    t.boolean  "Neck_pain",                                                       default: false, null: false
    t.boolean  "Neck_stiffness",                                                  default: false, null: false
    t.boolean  "Breasts_lumps",                                                   default: false, null: false
    t.boolean  "Breasts_pain",                                                    default: false, null: false
    t.boolean  "Breasts_discharge",                                               default: false, null: false
    t.boolean  "Breasts_self_exams",                                              default: false, null: false
    t.boolean  "Breasts_breast_feeding",                                          default: false, null: false
    t.boolean  "Respiratory_cough",                                               default: false, null: false
    t.boolean  "Respiratory_sputum",                                              default: false, null: false
    t.boolean  "Respiratory_coughing_up_blood",                                   default: false, null: false
    t.boolean  "Respiratory_shortness_of_breath",                                 default: false, null: false
    t.boolean  "Respiratory_wheezing",                                            default: false, null: false
    t.boolean  "Respiratory_painful_breathing",                                   default: false, null: false
    t.boolean  "Respiratory_difficulty_breathing_lying_down",                     default: false, null: false
    t.boolean  "Respiratory_swelling",                                            default: false, null: false
    t.boolean  "Respiratory_sudden_awakening_from_sleep_with_shortness_of_breat", default: false, null: false
    t.boolean  "Gastrointestina_swallowing_difficulties",                         default: false, null: false
    t.boolean  "Gastrointestina_heartburn",                                       default: false, null: false
    t.boolean  "Gastrointestina_change_in_appetite",                              default: false, null: false
    t.boolean  "Gastrointestina_nausea",                                          default: false, null: false
    t.boolean  "Gastrointestina_change_in_bowel_habits",                          default: false, null: false
    t.boolean  "Gastrointestina_rectal_bleeding",                                 default: false, null: false
    t.boolean  "Gastrointestina_constipation",                                    default: false, null: false
    t.boolean  "Gastrointestina_diarrhea",                                        default: false, null: false
    t.boolean  "Gastrointestina_yellow_eyes_or_skin",                             default: false, null: false
    t.boolean  "Urinary_frequency",                                               default: false, null: false
    t.boolean  "Urinary_urgency",                                                 default: false, null: false
    t.boolean  "Urinary_burning_or_pain",                                         default: false, null: false
    t.boolean  "Urinary_blood_in_urine",                                          default: false, null: false
    t.boolean  "Urinary_incontinence",                                            default: false, null: false
    t.boolean  "Urinary_change_in_urinary_strength",                              default: false, null: false
    t.boolean  "Vascular_calf_pain_with_walking",                                 default: false, null: false
    t.boolean  "Vascular_leg_cramping",                                           default: false, null: false
    t.boolean  "Musculoskeletal_muscle_or_joint_pain",                            default: false, null: false
    t.boolean  "Musculoskeletal_stiffness",                                       default: false, null: false
    t.boolean  "Musculoskeletal_back_pain",                                       default: false, null: false
    t.boolean  "Musculoskeletal_redness_of_joints",                               default: false, null: false
    t.boolean  "Musculoskeletal_swelling_of_joints",                              default: false, null: false
    t.boolean  "Musculoskeletal_trauma",                                          default: false, null: false
    t.boolean  "Neurologic_dizziness",                                            default: false, null: false
    t.boolean  "Neurologic_fainting",                                             default: false, null: false
    t.boolean  "Neurologic_seizures",                                             default: false, null: false
    t.boolean  "Neurologic_weakness",                                             default: false, null: false
    t.boolean  "Neurologic_numbness",                                             default: false, null: false
    t.boolean  "Neurologic_tingling",                                             default: false, null: false
    t.boolean  "Neurologic_tremor",                                               default: false, null: false
    t.boolean  "Hematologic_ease_of_bruising",                                    default: false, null: false
    t.boolean  "Hematologic_ease_of_bleeding",                                    default: false, null: false
    t.boolean  "Endocrine_head_or_cold_intolerance",                              default: false, null: false
    t.boolean  "Endocrine_sweating",                                              default: false, null: false
    t.boolean  "Endocrine_frequent_urination",                                    default: false, null: false
    t.boolean  "Endocrine_thirst",                                                default: false, null: false
    t.boolean  "Endocrine_change_in_appetite",                                    default: false, null: false
    t.boolean  "Psychiatric_nervousness",                                         default: false, null: false
    t.boolean  "Psychiatric_stress",                                              default: false, null: false
    t.boolean  "Psychiatric_depression",                                          default: false, null: false
    t.boolean  "Psychiatric_memory_loss",                                         default: false, null: false
    t.datetime "created_at",                                                                      null: false
    t.datetime "updated_at",                                                                      null: false
  end

  add_index "symptoms", ["user_id"], name: "index_symptoms_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name"
    t.string   "uid",                    default: "", null: false
    t.string   "provider",               default: "", null: false
    t.string   "image_url"
    t.string   "avatar"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree

  add_foreign_key "allergies", "users"
  add_foreign_key "medicines", "users"
  add_foreign_key "past_medical_histories", "users"
  add_foreign_key "symptoms", "users"
end
