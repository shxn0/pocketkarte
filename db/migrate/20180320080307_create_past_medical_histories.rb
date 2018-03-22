class CreatePastMedicalHistories < ActiveRecord::Migration
  def change
    create_table :past_medical_histories do |t|
      t.references :user, index: true, foreign_key: true
      t.string :icd_code
      t.boolean :brain_disease_in_the_past, default: false, null: false
      t.boolean :heart_disease_in_the_past, default: false, null: false
      t.boolean :surgery_in_the_past, default: false, null: false
      t.boolean :hospitalized_in_the_past, default: false, null: false
      t.boolean :attending_to_a_hospital_now, default: false, null: false

      t.timestamps null: false
    end
  end
end
