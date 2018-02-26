class Project < ApplicationRecord
  belongs_to :organization
  has_many :applications
  has_many :teams, through: :applications
  validates :title, :description, :due_date, :status, :budget, presence: true
end
