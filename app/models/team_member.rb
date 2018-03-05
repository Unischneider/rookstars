class TeamMember < ApplicationRecord
  belongs_to :team
  belongs_to :user
  validates :team, :user, presence: true
  accepts_nested_attributes_for :user

  def list_item
    "#{user.first_name} #{user.last_name} (#{user.email})"
  end
end
