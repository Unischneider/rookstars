class Project < ApplicationRecord
  belongs_to :organization
  has_many :proposals
  has_many :teams, through: :proposals
  validates :title, :description, :due_date, :status, :budget, presence: true
  mount_uploader :photo, PhotoUploader, :mount_on => :photo
end
