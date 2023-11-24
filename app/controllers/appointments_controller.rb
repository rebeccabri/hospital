class AppointmentsController < ApplicationController
  before_action :set_patient

  def new
    @patient = Patient.find(params[:patient_id])
    @appointment = @patient.appointments.new
  end

  def create
    @patient = Patient.find(params[:patient_id])
    @appointment = Appointment.new(appointment_params)
    @appointment.patient = @patient
    if @appointment.save
      redirect_to @patient, notice: 'Appointment added successfully.'
    else
      render 'new'
    end
  end

  private

  def set_patient
    @patient = Patient.find(params[:patient_id])
  end

  def appointment_params
    params.require(:appointment).permit(:doctor_id)
  end
end
