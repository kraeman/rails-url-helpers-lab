class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate
  
    @student = Student.find(params[:id])
    @student.change_status
    redirect_to student_path
  end

end