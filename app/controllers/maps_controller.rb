class MapsController < ApplicationController

  def new
    render :new
  end

  def create
    @map = current_user.maps.new(map_params)
    if @map.save
      render json: @map
    else
      flash[:error] = "Oops! Try saving your map again."
      render json: { errors: @map.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @map = Map.find_by(params[:id])
    render json: @map
  end

  def edit
    map_id = params[:id]
    @map = Map.find(map_id)
  end

  def update
    map_id = params[:id]
    map = Map.find(map_id)
    update_params = params.require(:map).permit(:title)
    if map.update_attributes(update_params)
      redirect_to profile_path
      flash[:success] = "Map successfully updated!"
    else
      redirect_to profile_path
      flash[:error] = "Oops! Try again!"
    end
  end

  def destroy
    Map.find(params[:id]).destroy
    redirect_to profile_path
  end

  private
    def map_params
      params.require(:map).permit(:user_id, :to, :from, :measurement, :travel_mode, :title, :url)
    end

end
