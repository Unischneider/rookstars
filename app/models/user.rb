class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # after_create :subscribe_to_newsletter

  private

  def subscribe_to_newsletter
    SubscribeToNewsletterService.new(self).call
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable,
         omniauth_providers: %i[github]

  has_many :team_members
  has_many :teams, through: :team_members
  validates :first_name, presence: true
  # mount_uploader :photo, PhotoUploader



def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.github_data"] && session["devise.github_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      if auth.info.name
        user.first_name = auth.info.name.split.first   # assuming the user model has a name
        user.last_name = auth.info.name.split.last
      end
      p auth.info.image
      user.photo = auth.info.image # assuming the user model has an image
      # If you are using confirmable and the provider(s) you use validate emails,
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
  end
end
