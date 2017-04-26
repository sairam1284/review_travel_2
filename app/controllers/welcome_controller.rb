class WelcomeController < ApplicationController
  def index
    @users = User.all
    @trips = Trip.all
  end
end
