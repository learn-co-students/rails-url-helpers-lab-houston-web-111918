class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
  def index
    @students = Student.all
  end

  def show
  
  end
  
  def activate
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)
    # redirect_to @student
    # redirect_to "/students/#{@student.id}"
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end
  
end