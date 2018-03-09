class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # after_create :subscribe_to_newsletter
  has_many :team_members, dependent: :destroy
  has_many :teams, through: :team_members
  validates :first_name, presence: true

  accepts_nested_attributes_for :team_members
  before_create :make_moderator
  mount_uploader :photo, PhotoUploader, :mount_on => :photo

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable,
         omniauth_providers: %i[github]

  def subscribe_to_newsletter
    SubscribeToNewsletterService.new(self).call
  end

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
      user.remote_photo_url = auth.info.image # assuming the user model has an image
      user.moderator = true
      user.save
      # If you are using confirmable and the provider(s) you use validate emails,
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
  end

  def avatar
    if photo.file.nil?
      "http://res.cloudinary.com/jules/image/upload/v1520336238/placeholder.jpg"
    else
      photo
    end
  end

  private

  def make_moderator
    self.moderator = true
  end

  def subscribe_to_newsletter
    SubscribeToNewsletterService.new(self).call
  end

end
