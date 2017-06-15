class RidesController < ApplicationController
  def new

  end

  def create
    @ride = Ride.new
    # byebug
    @ride.attraction_id = params[:attraction]
    @ride.user_id = current_user.id
    @ride.save
    @ride.take_ride
    redirect_to user_path(current_user)
  end

  def destroy

  end

end
