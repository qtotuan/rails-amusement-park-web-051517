class RidesController < ApplicationController
  def new

  end

  def create
    @ride = Ride.new
    # byebug
    @ride.attraction_id = params[:attraction]
    @ride.user_id = current_user.id
    @ride.save
    message = @ride.take_ride
    if message.nil?
      @attraction = Attraction.find(params[:attraction])
      flash[:success] = "Thanks for riding the #{@attraction.name}!"
    else
      flash[:danger] = message
    end
    redirect_to user_path(current_user)
  end

  def destroy

  end

end
