class OrdersController < ApplicationController
  def create
    project = Project.find(params[:project_id])
    order  = Order.create!(project_sku: project.title, amount: project.price_cents, state: 'pending')

    redirect_to new_order_payment_path(order)
  end

  def show
    @order = policy_scope(Order.where(state: 'paid').find(params[:id]))
  end
end
