class Application < ApplicationRecord
  belongs_to :project
  belongs_to :team
end
