class CreateMedicines < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
      t.references :user, index: true, foreign_key: true
      t.string :medicine_name
      t.string :medicine_img, null: false, default: ""
      t.timestamps null: false
    end
  end
end
