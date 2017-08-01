class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

  has_many :comments

  validates :first_name, :last_name, :email, :presence => true

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name
      user.image_uri = auth.info.image
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end

end
