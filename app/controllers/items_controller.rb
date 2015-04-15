class ItemsController < ApplicationController
  before_action :set_list, only: [:create, :destroy]

  def create
    @new_item = @list.items.create(item_params)
    if !params[:item][:name].blank? && params[:tag_ids].present?
      set_tags
    end

    respond_to do |format|
      if @list.save
        format.html { redirect_to @list, notice: 'Iten was successfully created.' }
      else
        format.html { redirect_to @list, notice: 'Item should have name' }
      end
    end
  end

  def destroy
    @list.items.find(params[:id]).destroy
    redirect_to @list
  end

  private
    def set_tags
      params[:tag_ids].each do |tag_id|
        tag = Tag.find(tag_id)
        @new_item.tags << tag
        @new_item.save!
      end
    end
    
    def set_list
      @list = List.find(params[:list_id])
    end

    def item_params
      params.require(:item).permit(:name)
    end
end
