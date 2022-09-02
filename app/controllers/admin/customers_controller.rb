class Admin::CustomersController < ApplicationController
  def edit
  end

  def index
    @customers = Customer.all

  end

  def show
  end

end
