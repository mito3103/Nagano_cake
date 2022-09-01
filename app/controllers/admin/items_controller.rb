class Admin::ItemsController < ApplicationController
  def edit
  end

  def index
    @items = Item.all.includes(:genre)
  end

  def create
    item = Item.new(item_params)
    item.save
    redirect_to admin_items_path
  end

  def update
  end


  def new
    @item = Item.new
    #@items = Item.find(params[:id])
  end

  def show
  end

private
def item_params
  params.require(:item).permit(:image,:name,:introduction,:genre_id,:price,:is_active)
end


end
