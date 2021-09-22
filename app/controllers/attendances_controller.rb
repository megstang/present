class AttendancesController < ApplicationController
  def new
    @module = TuringModule.find(params[:turing_module_id])
    @attendance = Attendance.new
  end

  def create
    @module = TuringModule.find(params[:turing_module_id])
    @module.attendances.create(attendance_params)
    redirect_to turing_module_path(@module)
  end

  private
  def attendance_params
    params.require(:attendance).permit(:zoom_meeting_id).merge(user: current_user)
  end
end