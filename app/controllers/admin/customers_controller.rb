class Admin::CustomersController < ApplicationController
  def edit
    @customer = Customer.find(params[:id])
  end

  def index
    @customers = Customer.all

  end

  def show
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(customer_params)
    @customer.update
    redirect_to admin_customer_path(customer.id)
  end

private
  def customer_params
    params.require(:customer).permit(:last_name,:first_name,:last_name_kana, :first_name_kana,:postal_code,:address,:telephone_number,:email,:is_active)
  end
end
