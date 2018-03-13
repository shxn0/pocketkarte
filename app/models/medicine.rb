class Medicine < ActiveRecord::Base
  validates :medicine_name, presence: true
  belongs_to :user

end
