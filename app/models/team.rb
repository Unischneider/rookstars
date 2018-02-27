class Team < ApplicationRecord
  has_many :team_members
  has_many :applications
  has_many :projects, through: :applications
end
