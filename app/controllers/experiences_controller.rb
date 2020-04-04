class ExperiencesController < ApplicationController

  def new
    @destination = Destination.find(params[:destination_id])
    @experience = @destination.experiences.build
  end

  def create
    @experience = Experience.new(experience_params)
    binding.pry
    redirect_to experience_path(@experience)

  end

  def show
  end

  def destroy
  end

  private

  def experience_params
    params.require(:experience).permit(:name, :price, :paid, :location, :time, :destination_id)
  end
end
