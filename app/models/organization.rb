class Organization < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, :description, presence: true
  mount_uploader :photo, PhotoUploader
  def avatar
    if photo.file.nil?
      "http://res.cloudinary.com/jules/image/upload/v1520336238/placeholder.jpg"
    else
      photo
    end
  end
end
