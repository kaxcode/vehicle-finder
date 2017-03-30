class SearchesController < ApplicationController
  # GET /searches/1
  def show
    @search = Search.find(params[:id])
  end

  # GET /searches/new
  def new
    @search = Search.new
  end

  # POST /searches
  def create
    @search = Search.create!(params[:search])
    redirect_to @search
  end

  private
    # Only allow a trusted parameter "white list" through.
    def search_params
      params.require(:search).permit(:keyword, :vehicle_type, :min_price, :max_price)
    end
end
