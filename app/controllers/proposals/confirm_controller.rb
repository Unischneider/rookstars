class Proposals::ConfirmController < ApplicationController
  before_action :find_proposal
  skip_before_action :authenticate_user!

  def edit
    @team_members = TeamMember.where(team_id: @proposal.team_id)
    authorize @proposal
  end

  def update
    authorize @proposal
    if current_user
        @proposal.status = params[:status]
        @proposal.save
      if @proposal.status == "Confirmed"
        @proposal.project.status = "On Going"
        @proposal.project.save
        redirect_to project_classroom_path(@proposal.project.id)
      else
        redirect_to user_path(current_user)
      end
    else
      if params[:status] == "Confirmed"
        @proposal.status = "Pending Developer confirmation"
        @proposal.save
        order  = Order.create!(project_sku: @proposal.project.title, amount: @proposal.project.price_cents, state: 'pending')
        redirect_to new_order_payment_path(order)
      else
        @proposal.status = params[:status]
        @proposal.save
        redirect_to organizations_proposals_path
      end
    end
  end

  private

  def find_proposal
    @proposal = Proposal.find(params[:id])
  end
end
