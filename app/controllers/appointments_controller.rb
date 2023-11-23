class AppointmentsController < ApplicationController
  def new
    raise
    @patient = Patient.find()
    @appointment = Appointments.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
  end
end
