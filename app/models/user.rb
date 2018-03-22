class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :patient_background, dependent: :destroy
  has_many :medicines, dependent: :destroy
  has_many :allergies, dependent: :destroy
  has_one :past_medical_history, dependent: :destroy
end
