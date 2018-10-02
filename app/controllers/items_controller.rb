class ItemsController < ApplicationController
  def create
    @item = Item.new(params.require(:item).permit(:name))
    @item.user = current_user
    # @items = Item.user.find(params[:id])
    if @item.save
      flash[:notice] = "Your item was successfully saved!"
      redirect_to @item
    else
      flash.now[:alert] = "There was an error creating your item. Please try again."
  end
end
