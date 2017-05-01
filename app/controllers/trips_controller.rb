
class TripsController < ApplicationController
  def index
    @users = User.all
    @trips = Trip.where(hidden: false)
    @trips_all = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
    @review = Review.new
    @reviews = @trip.reviews
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    if @trip.save
      redirect_to trips_path, notice: "Successfully added trip."
    else
      flash[:fail_notice] = "Trip failed to be saved"
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
      flash[:fail_notice] = "Trip failed to be saved"
      render :edit
    end
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.hidden = true
    @trip.save
    if !@product
      flash[:notice] = "Trip succesfully deleted."
      redirect_to trips_path
    else
      render :show
    end

  end

  protected
  def trip_params
    params.require(:trip).permit(:title, :length, :location, :overview, :price, :tips, :picture)
  end

end
