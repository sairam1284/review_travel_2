class TripsController < ApplicationController
  def index
    @users = User.all
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
    # @review = Review.new
    # @reviews = @product.reviews
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    if @trip.save
      redirect_to trips_path, notice: "Successfully added trip."
    else
      render :new
    end
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:id])
    @trip.update(trip_params)
    if @trip.save
      flash[:notice] = "Trip was succesfully updated."
      redirect_to trip_path(@trip)
    else
      render :edit
    end
  end

  def destroy
    # if user_signed_in?
    #   Trip.destroy(params[:id])
    # else
    #   flash[:notice] = "Please sign in to delete entry."
    # end
    if user_signed_in?
      if !@product
        flash[:notice] = "Trip succesfully deleted."
        redirect_to trips_path
      else
        render :show
      end
    else
      flash[:notice] = "You must sign in first to delete Item"
    end

  end

  protected
  def trip_params
    params.require(:trip).permit(:title, :length, :location, :overview, :price, :tips, :picture)
  end
end
