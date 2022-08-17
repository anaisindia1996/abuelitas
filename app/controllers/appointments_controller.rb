class AppointmentsController < ApplicationController

  def new
    @appointment = Appointment.new
    @experience = Experience.find(params[:experience_id])
  end

  def create
    @experience = Experience.find(params[:experience_id]).id
    @user = current_user.id
    @appointment = Appointment.new(appointment_params)
    @appointment.user_id = @user
    @appointment.experience_id = @experience

    if @appointment.save
      redirect_to my_experiences_path
    else
      render 'appointments/show', status: :unprocessable_entity
    end
  end

  def index
  end

  def show
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date)
  end
end
