class ExperiencesController < ApplicationController
  before_action :set_experience, only: [:show, :edit, :update, :destroy]

  def index
    @experiences = Experience.all
  end

  def show
    @review = Review.new
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)
    @experience.user = current_user
    if @experience.save
      redirect_to experience_path(@experience)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @experience.update(experience_params)
    redirect_to experience_path(@experience)
  end

  def destroy
    @experience.destroy
    redirect_to experiences_path, status: :see_other, notice: "Experience was successfully destroyed."
  end

  private

  def set_experience
    @experience = Experience.find(params[:id])
  end

  def experience_params
    params.require(:experience).permit(:grandma_name, :activity_name, :availability, :description, :photo, :price, :location, :latitude, :longitude)
  end
end
