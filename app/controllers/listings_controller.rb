class ListingsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  def index
  end

  def new
    @listing = Listing.new
  end

  def create
    @user = User.find(current_user.id)
    @listing = @user.listings.new(listing_params)
    if @listing.save
      flash[:success] = "Listing Successfully Added!"
      redirect_to root_path
    else
      flash[:danger] = "There was a problem creating your listing, please try again."
      render :new
    end
  end

private
  def listing_params
    params.require(:listing).permit(:price, :location, :property_type)
  end
end
