class ItemsController < ApplicationController

  def create
    @item = current_user.items.build(params.require(:item).permit(:name))

    if @item.save
      flash[:notice] = "Your item was successfully saved!"
    else
      flash.now[:alert] = "There was an error saving your item. Please try again."
    end
    redirect_to user_path(current_user)
  end
end
