class Team < ApplicationRecord
  has_many :team_members
  has_many :users, through: :team_member
  has_many :proposals
  has_many :projects, through: :proposals


  def lead_dev
    team_member = team_members.find { |team_member| team_member.lead_dev }
    if team_member
     team_member.user.first_name
   else
     team_members.first.user.first_name
   end
    # self.team_members.where { team_member.lead_dev == true }.user.first_name
    # self.team_members.each do |team_member|
    #    if team_member.lead_dev
    #     team_member.user.first_name
    #    end
    #  end
  end

  def lead_dev_label
    "#{lead_dev}'s team"
  end
end
