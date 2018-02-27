class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable,
         omniauth_providers: %i[github]

  has_many :team_members
  has_many :teams, through: :team_members
  validates :first_name, :last_name, :github, presence: true
  mount_uploader :pic_url, PhotoUploader
end
