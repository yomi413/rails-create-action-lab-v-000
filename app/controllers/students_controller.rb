class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new
    @student = params[:first_name]
    @student = params[:last_name]
    @student.save
    redirect_to student_path(@student)
  end

end
