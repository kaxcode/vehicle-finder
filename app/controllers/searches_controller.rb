class SearchesController < ApplicationController
  # GET /searches
  def index
    @searches = Search.all
  end

  # GET /searches/1
  def show
    @search = Search.find(params[:id])
  end

  # GET /searches/new
  def new
    @search = Search.new
  end

  # GET /searches/1/edit
  def edit
    @search = Search.find(params[:id])
  end

  # POST /searches
  def create
    @search = Search.new(search_params)

    if @search.save
      redirect_to @search, notice: 'Search was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /searches/1
  def update
    @search = Search.find(params[:id])
    if @search.update(search_params)
      redirect_to @search, notice: 'Search was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /searches/1
  def destroy
    @search = Search.find(params[:id])
    @search.destroy
    redirect_to searches_url, notice: 'Search was successfully destroyed.'
  end

  private
    # Only allow a trusted parameter "white list" through.
    def search_params
      params.require(:search).permit(:keyword, :vehicle_type, :min_price, :max_price)
    end
end
