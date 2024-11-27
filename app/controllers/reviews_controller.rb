class ReviewsController < ApplicationController
    before_action :set_restaurant, only: [:new, :create]

    def new
      @review = Review.new
    end

    def create
      @review = @restaurant.reviews.build(review_params) # Associe la review au restaurant
      if @review.save
        redirect_to restaurant_path(@restaurant), notice: 'Review successfully created.'
      else
        render :new, status: :unprocessable_entity
      end
    end

    private

    def set_restaurant
      @restaurant = Restaurant.find(params[:restaurant_id]) # Trouve le restaurant via l'ID
    end

    def review_params
      params.require(:review).permit(:content, :rating) # Filtre les champs autorisés
    end
  end
