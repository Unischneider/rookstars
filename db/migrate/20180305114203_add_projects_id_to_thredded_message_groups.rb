class AddProjectsIdToThreddedMessageGroups < ActiveRecord::Migration[5.1]
  def change
    add_reference :thredded_messageboard_groups, :project, index: true
  end
end
