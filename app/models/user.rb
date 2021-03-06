class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable

  has_one :patient_background, dependent: :destroy
  has_many :medicines, dependent: :destroy
  has_many :allergies, dependent: :destroy
  has_one :past_medical_history, dependent: :destroy
  has_one :symptom, dependent: :destroy

  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    user = User.find_by(provider: auth.provider, uid: auth.uid)

    unless user
      user = User.new(
          name:     auth.extra.raw_info.name,
          provider: auth.provider,
          uid:      auth.uid,
          email:    "#{auth.uid}-#{auth.provider}@example.com",
          image_url:   auth.info.image,
          password: Devise.friendly_token[0, 20]
      )
      user.skip_confirmation!
      user.save(validate: false)
    end
    user
  end

  def self.find_for_twitter_oauth(auth, signed_in_resource = nil)
    user = User.find_by(provider: auth.provider, uid: auth.uid)

    unless user

      user = User.new(
          name:      auth.info.nickname,
          image_url: auth.info.image,
          provider:  auth.provider,
          uid:       auth.uid,
          email:     auth.info.email ||= "#{auth.uid}-#{auth.provider}@example.com",
          password:  Devise.friendly_token[0, 20]
      )
      user.skip_confirmation!
      user.save
    end
    user
  end


  def self.create_unique_string
    SecureRandom.uuid
  end

end
