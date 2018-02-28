class Team < ApplicationRecord
  has_many :team_members
  has_many :proposals
  has_many :projects, through: :proposals
end
