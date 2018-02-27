class Application < ApplicationRecord
  belongs_to :project
  belongs_to :team
  validates :team, :project, :pitch, presence: true
end
