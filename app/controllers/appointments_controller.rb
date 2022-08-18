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
      redirect_to appointments_path
    else
      render 'appointments/new', status: :unprocessable_entity
    end
  end

  def index
    @my_appointments = Appointment.where(user_id: current_user.id)
    @experience = Experience.where(params[:experience_id])
  end

  def show
    @appointment = Appointment.find(params[:id])
    @experience = @appointment.experience
  end

  def confirm
    @appointment = Appointment.find(params[:id])
    @appointment.Confirmed!
    redirect_to my_experiences_path
  end

  def decline
    @appointment = Appointment.find(params[:id])
    @appointment.Declined!
    redirect_to my_experiences_path, status: :see_other
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])
    @appointment.update(appointment_params)
    redirect_to appointments_path
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to appointments_path, status: :see_other, notice: "Appointment was cancelled"
  end

  def my_agent_appointments
    # Find all the experiences belonging
    # Trying to find the appointment.experience.user_id to check if it match current_user
    @my_agents_appointments = current_user.agent_appointments
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date)
  end
end
