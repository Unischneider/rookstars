class Proposal < ApplicationRecord
  belongs_to :project
  belongs_to :team
  validates :team, :project, :pitch, presence: true
  validates :status, inclusion: { in: ["Pending Developer request", "Pending NGO validation", "Confirmed", "Canceled"], allow_nil: true }
end
