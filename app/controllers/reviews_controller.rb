class ReviewsController < ApplicationController
  require 'pry'
  # before_create :has_review?
  #    belongs_to :user, inverse_of: :reviews
  #    belongs_to :trip
  # def has_review?
  #     return if Review.exists?(user: user, trip_id: trip_id)
  # end

  def new
    @review = Review.new
    @trip = Trip.find(params[:id])
  end

  def create
    @user = current_user
    @trip = Trip.find(params[:trip_id])
    @review = Review.new(review_params)
    @review.trip_id = params[:trip_id]
    @review.user = current_user
    @review_owner =
    if @review.save
      redirect_to @trip, notice: "Thank you. Your review has been saved."
    else
      flash[:error] = "There was an issue saving with your review."
      render "trips/show"
    end
  end

  def edit
    @review = Review.find(params[:id])
    @trip = Trip.find(params[:trip_id])
  end

  def update
    @trip = Trip.find(params[:trip_id])
    @review = Review.find(params[:id])
    @review.update(review_params)
    if @review.save
      flash[:notice] = "Review was successfully updated."
      redirect_to trip_path(@trip)
    else
      redirect_to trip_path(@trip)
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @trip = @review.trip
    # binding.pry
    @review.destroy

    if !@review
      flash[:notice] = "Review succesfully deleted."
      redirect_to trip_path(@trip)
    else
      flash[:notice] = "Review unable to be deleted"
      redirect_to trip_path(@trip)
    end
  end

  def upvote
    @review = Review.find(params[:review_id])
    @review.votes.create
    vote = Vote.find_by(user: current_user, review: @review)
    if vote
      vote.score += 1
      vote.save
    else
      Vote.create!(user: current_user, review: @review, score: 1)
    end
  end

  def downvote
    @review = Review.find(params[:review_id])
    @review.votes.create
    vote = Vote.find_by(user: current_user, review: @review)
    if vote
      vote.score -= 1
      vote.save
    else
      Vote.create!(user: current_user, review: @review, score: 1)
    end
  end

  private
  def review_params
    params.require(:review).permit(:header, :body, :rating)
  end
end
