class ExperiencesController < ApplicationController
  before_action :set_experience, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:search]
      experiences_params = params[:search][:activity_name].downcase
      @experiences = Experience.where("LOWER(activity_name) LIKE ?", "%#{experiences_params}%")
    else
      @experiences = Experience.all
    end
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

  def my_index
    # Find all the experiences belonging
    @my_experiences = Experience.where(user_id: current_user.id)
    # Find all the booking requests received - TO be helped on that one
    @my_agents_appointments = current_user.agent_appointments
  end

  private

  def set_experience
    @experience = Experience.find(params[:id])
  end

  def experience_params
    params.require(:experience).permit(:grandma_name, :activity_name, :description, :photo, :price, :address)
  end
end
