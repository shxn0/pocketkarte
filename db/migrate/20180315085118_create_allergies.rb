class CreateAllergies < ActiveRecord::Migration
  def change
    create_table :allergies do |t|
      t.references :user, index: true, foreign_key: true
      t.string :allergy_name
      
      t.timestamps null: false
    end
  end
end
