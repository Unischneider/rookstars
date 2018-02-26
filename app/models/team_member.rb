class TeamMember < ApplicationRecord
  belongs_to :team
  belongs_to :user
  validates :lead_dev, :team, :user, presence: true
end
