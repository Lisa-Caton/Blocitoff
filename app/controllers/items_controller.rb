class ItemsController < ApplicationController

  def create
    @item = current_user.items.new(item_params)

    if @item.save
      flash[:notice] = "Your item was successfully saved!"
    else
      flash.now[:alert] = "There was an error saving your item. Please try again."
    end
    redirect_to user_path(current_user)
  end

  def edit
    @item = current_user.items.find(params[:id])
  end

  def update
    @item = current_user.items.find(params[:id])
    @item.update_attribute(item_params)

    if @item.update
      flash[:notice] = "Item was updated successfully"
      redirect_to [@item]
    else
      flash[:alert] = "Item did not update"
      render :edit
    end
  end

  def destroy
    @item = current_user.items.find(params[:id])

    @item.destroy
    respond_to do |format|
      format.html { redirect_to user_path(:id), notice: 'Item was successfully removed!' }
      format.json { head :no_content }
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
