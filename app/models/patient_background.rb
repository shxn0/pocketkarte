class PatientBackground < ActiveRecord::Base

  def change
    create_table :patient_backgrounds do |t|
      t.string :name, null: false
      t.date :birthday, null: false #date型を指定してdate_selectメソッドにあわせて実装する
      t.string :sex, null: false
      t.string :country, null: false
      t.integer :hight, null: false
      t.integer :weight, null: false
      t.string :occupation, default: ""
      t.string :religion, default: ""
      t.text :notes, default: ""
      t.string :profile_url, default: ""
  end

end
