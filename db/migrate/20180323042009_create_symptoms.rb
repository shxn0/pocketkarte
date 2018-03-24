class CreateSymptoms < ActiveRecord::Migration
  def change
    create_table :symptoms do |t|
      t.references :user, index: true, foreign_key: true

      t.boolean :General_weight_loss_or_gain, default: false, null: false
      t.boolean :General_fatigue , default: false, null: false
      t.boolean :General_fever_or_chills, default: false, null: false
      t.boolean :General_weakness, default: false, null: false
      t.boolean :General_trouble_sleeping, default: false, null: false
      t.boolean :Skin_rashes, default: false, null: false
      t.boolean :Skin_lumps, default: false, null: false
      t.boolean :Skin_itching, default: false, null: false
      t.boolean :Skin_dryness, default: false, null: false
      t.boolean :Skin_color_changes, default: false, null: false
      t.boolean :Skin_hair_and_nail_changes, default: false, null: false
      t.boolean :Head_headache, default: false, null: false
      t.boolean :Head_head_injury, default: false, null: false
      t.boolean :Head_neck_Pain, default: false, null: false
      t.boolean :Ears_decreased_hearing, default: false, null: false
      t.boolean :Ears_ringing_in_ears, default: false, null: false
      t.boolean :Ears_earache, default: false, null: false
      t.boolean :Ears_drainage, default: false, null: false
      t.boolean :Eyes_vision_loss_Changes, default: false, null: false
      t.boolean :Eyes_glasses_or_contacts, default: false, null: false
      t.boolean :Eyes_pain, default: false, null: false
      t.boolean :Eyes_redness, default: false, null: false
      t.boolean :Eyes_blurry_or_double_vision, default: false, null: false
      t.boolean :Eyes_flashing_lights, default: false, null: false
      t.boolean :Eyes_specks, default: false, null: false
      t.boolean :Eyes_glaucoma, default: false, null: false
      t.boolean :Eyes_cataracts, default: false, null: false
      t.boolean :Eyes_last_eye_exam, default: false, null: false
      t.boolean :Nose_stuffiness, default: false, null: false
      t.boolean :Nose_discharge, default: false, null: false
      t.boolean :Nose_itching, default: false, null: false
      t.boolean :Nose_hay_fever, default: false, null: false
      t.boolean :Nose_nosebleeds, default: false, null: false
      t.boolean :Nose_sinus_pain, default: false, null: false
      t.boolean :Throat_bleeding, default: false, null: false
      t.boolean :Throat_dentures, default: false, null: false
      t.boolean :Throat_sore_tongue, default: false, null: false
      t.boolean :Throat_dry_mouth, default: false, null: false
      t.boolean :Throat_sore_throat, default: false, null: false
      t.boolean :Throat_hoarseness, default: false, null: false
      t.boolean :Throat_thrush, default: false, null: false
      t.boolean :Throat_non_healing_sores, default: false, null: false
      t.boolean :Neck_lumps, default: false, null: false
      t.boolean :Neck_swollen_glands, default: false, null: false
      t.boolean :Neck_pain, default: false, null: false
      t.boolean :Neck_stiffness, default: false, null: false
      t.boolean :Breasts_lumps, default: false, null: false
      t.boolean :Breasts_pain, default: false, null: false
      t.boolean :Breasts_discharge, default: false, null: false
      t.boolean :Breasts_self_exams, default: false, null: false
      t.boolean :Breasts_breast_feeding, default: false, null: false
      t.boolean :Respiratory_cough, default: false, null: false
      t.boolean :Respiratory_sputum, default: false, null: false
      t.boolean :Respiratory_coughing_up_blood, default: false, null: false
      t.boolean :Respiratory_shortness_of_breath, default: false, null: false
      t.boolean :Respiratory_wheezing, default: false, null: false
      t.boolean :Respiratory_painful_breathing, default: false, null: false
      t.boolean :Respiratory_difficulty_breathing_lying_down, default: false, null: false
      t.boolean :Respiratory_swelling , default: false, null: false
      t.boolean :Respiratory_sudden_awakening_from_sleep_with_shortness_of_breath, default: false, null: false
      t.boolean :Gastrointestina_swallowing_difficulties, default: false, null: false
      t.boolean :Gastrointestina_heartburn, default: false, null: false
      t.boolean :Gastrointestina_change_in_appetite, default: false, null: false
      t.boolean :Gastrointestina_nausea, default: false, null: false
      t.boolean :Gastrointestina_change_in_bowel_habits, default: false, null: false
      t.boolean :Gastrointestina_rectal_bleeding , default: false, null: false
      t.boolean :Gastrointestina_constipation, default: false, null: false
      t.boolean :Gastrointestina_diarrhea, default: false, null: false
      t.boolean :Gastrointestina_yellow_eyes_or_skin, default: false, null: false
      t.boolean :Urinary_frequency, default: false, null: false
      t.boolean :Urinary_urgency, default: false, null: false
      t.boolean :Urinary_burning_or_pain, default: false, null: false
      t.boolean :Urinary_blood_in_urine, default: false, null: false
      t.boolean :Urinary_incontinence, default: false, null: false
      t.boolean :Urinary_change_in_urinary_strength, default: false, null: false
      t.boolean :Vascular_calf_pain_with_walking , default: false, null: false
      t.boolean :Vascular_leg_cramping, default: false, null: false
      t.boolean :Musculoskeletal_muscle_or_joint_pain , default: false, null: false
      t.boolean :Musculoskeletal_stiffness, default: false, null: false
      t.boolean :Musculoskeletal_back_pain, default: false, null: false
      t.boolean :Musculoskeletal_redness_of_joints, default: false, null: false
      t.boolean :Musculoskeletal_swelling_of_joints, default: false, null: false
      t.boolean :Musculoskeletal_trauma, default: false, null: false
      t.boolean :Neurologic_dizziness, default: false, null: false
      t.boolean :Neurologic_fainting, default: false, null: false
      t.boolean :Neurologic_seizures, default: false, null: false
      t.boolean :Neurologic_weakness, default: false, null: false
      t.boolean :Neurologic_numbness, default: false, null: false
      t.boolean :Neurologic_tingling, default: false, null: false
      t.boolean :Neurologic_tremor, default: false, null: false
      t.boolean :Hematologic_ease_of_bruising, default: false, null: false
      t.boolean :Hematologic_ease_of_bleeding, default: false, null: false
      t.boolean :Endocrine_head_or_cold_intolerance, default: false, null: false
      t.boolean :Endocrine_sweating, default: false, null: false
      t.boolean :Endocrine_frequent_urination, default: false, null: false
      t.boolean :Endocrine_thirst, default: false, null: false
      t.boolean :Endocrine_change_in_appetite, default: false, null: false
      t.boolean :Psychiatric_nervousness, default: false, null: false
      t.boolean :Psychiatric_stress, default: false, null: false
      t.boolean :Psychiatric_depression, default: false, null: false
      t.boolean :Psychiatric_memory_loss, default: false, null: false

      t.timestamps null: false
    end
  end
end
