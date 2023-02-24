class ListsController < ApplicationController
  def index
    @lists = List.all
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    # raise
    @list = List.new(list_params)
    @list.image_url = "https://source.unsplash.com/random/800x400/?#{params[:list][:name].downcase}"
    @list.save
    redirect_to root_path
  end

  private

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
