class ListsController < ApplicationController
  def index
  end

  def new
    @list = List.new
  end

  def show
    @list = List.all
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render 'bookmark/list'
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
