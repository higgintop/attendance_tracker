class AttendancesController < ApplicationController
  def new

  end

  def create

  end

  def index
    today = DateTime.now.to_date
    user_picked_date = Date.new params[:date][:year].to_i, params[:date][:month].to_i, params[:date][:day].to_i
    logger.info("THE USER PICKED DAY IS" + user_picked_date.to_s)
    if user_picked_date == today
      logger.info("YES TODAY")
      flash.notice = "TODAY's List"
      # want to return a list of students ...
    elsif user_picked_date < today
      flash.notice = "PAST ATTENDANCE"
      # not today (assume the past) show only those students
      @attendances = Attendance.where('date = ?', user_picked_date.to_s)
    end
  end
end
