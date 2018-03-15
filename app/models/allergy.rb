class Allergy < ActiveRecord::Base
  validates :allergy_name, presence: true
  belongs_to :user

end
