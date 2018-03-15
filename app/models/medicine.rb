class Medicine < ActiveRecord::Base
  validates :medicine_name, presence: true
  belongs_to :user


  mount_uploader :medicine_img, MedicineUploader

end
