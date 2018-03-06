class CreatePatientBackgrounds < ActiveRecord::Migration
  def change
    create_table :patient_backgrounds do |t|
      t.string :name, null: false
      t.date :birthday, null: false #deta型を指定することでdate_selectメソッドにデータ型を対応させる
      t.string :sex, null: false
      t.integer :country, default: 0, null: false, limit: 1
      t.integer :hight, null: false
      t.integer :weight, null: false
      t.string :occupation, default: ""
      t.string :religion, default: ""
      t.text :notes, default: ""
      t.string :profile_url, default: ""
      t.integer :user_id, null: false

      t.timestamps null: false
    end
  end
end
