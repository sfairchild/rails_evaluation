class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]
  # helper_method :sort_column, :sort_direction

  def index
    @lists = List.all
  end


  def show
    @new_item = Item.new
    @tags = Tag.all
    @sorted_items = @list.items.order('lower(name)')
  end

  def new
    @list = List.new
  end

  def edit
  end

  def create
    @list = List.new(list_params)

    respond_to do |format|
      if @list.save
        format.html { redirect_to @list, notice: 'List was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @list.update(list_params)
        format.html { redirect_to @list, notice: 'List was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @list.destroy
    redirect_to lists_url, notice: 'List was successfully destroyed.'
  end

  private
    def set_list
      @list = List.includes(:items).find(params[:id])
    end

    def list_params
      params.require(:list).permit(:name, :description)
    end

    # def sort_column
    #   List.column_names.include?(params[:sort]) ? params[:sort] : "name"
    #   # @list.items.order('lower(name)')
    # end
    #
    # def sort_direction
    #   %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    # end
end
