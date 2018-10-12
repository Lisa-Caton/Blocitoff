class UsersController < ApplicationController

  def create
    @item = Item.new
  end

  def show
    @items = current_user.items
    # if you werent using devise use: @items = @user.items
  end

end
