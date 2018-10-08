class UsersController < ApplicationController

  def create
    @item = Item.new
  end

  def show
    @items = current_user.items
    # if you werent using devise use: @items = @user.items
  end



  #   if @item.destroy
  #     flash[:notice] = "Item was deleted successfully!"
  #   else
  #     flash[:alert] = "There was a trouble deleting your item."
  #   end
  # end

end
