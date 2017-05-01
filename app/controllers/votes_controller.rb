class VotesController < ApplicationController

  def new
    @vote = Vote.new

  end
  def create
    @vote = Vote.new(vote_params)
    @vote.review = Review.find(params[:id])
    @vote.user = current_user
    @trip = @vote.review.trip

  end

  private
  def vote_params
    params.require(:vote).permit(:score)
  end
end
