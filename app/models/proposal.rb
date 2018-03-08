class Proposal < ApplicationRecord
  belongs_to :project
  belongs_to :team
  has_many :team_members, through: :team
  validates :team, :project, presence: true
  validates :status, inclusion: { in: ["Pending Developer confirmation", "Pending NGO confirmation", "Confirmed", "Canceled", "Selfcreated"], allow_nil: true }
end
