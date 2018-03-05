class Project < ApplicationRecord
  belongs_to :organization
  has_many :proposals
  has_many :teams, through: :proposals
  has_one :thredded_messageboard_group
  validates :title, :description, :due_date, :status, :budget, presence: true
  mount_uploader :photo, PhotoUploader, :mount_on => :photo
  monetize :price_cents
end
