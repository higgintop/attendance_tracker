class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_path, notice: "Student #{@student.name} has been added"
    else
      flash.alert = "Please fix errors below to continue."
      render :new
    end
  end

  protected
    def student_params
      params.require(:student).permit(:name)
    end
end
