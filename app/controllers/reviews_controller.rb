class ReviewsController < ApplicationController
  # GET /reviews
  def index
    @reviews = Review.where(user_id: params[:user_id])
    @users = User.all
  end

  # GET /reviews/1
  def show
    @review = Review.find(params[:id])
    @users = User.all
  end

  # GET /reviews/new
  def new
    @review = Review.new
    @users = User.all
  end

  # GET /reviews/1/edit
  def edit
    @review = Review.find(params[:id])
  end

  # POST /reviews
  def create
    @review = Review.new(review_params)
    @users = User.all

    if @review.save
      redirect_to @review, notice: 'Review was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /reviews/1
  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to @review, notice: 'Review was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /reviews/1
  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to reviews_url, notice: 'Review was successfully destroyed.'
  end

  private
    # Only allow a trusted parameter "white list" through.
    def review_params
      params.require(:review).permit(:review_body, :user_id)
    end
end
