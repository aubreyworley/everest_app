class MapsController < ApplicationController

  def new
    render :new
  end

  def create
    @map = current_user.maps.new(map_params)
    if @map.save
      render json: @map
    else
      render json: { errors: @map.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @map = Map.find_by(params[:id])
    render json: @map
  end

  def destroy
    Map.find(params[:id]).destroy
    redirect_to profile_path
  end

  private
    def map_params
      params.require(:map).permit(:user_id, :to, :from, :measurement, :travel_mode)
    end

end
