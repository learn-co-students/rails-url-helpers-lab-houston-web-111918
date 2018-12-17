class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
  def index
    @students = Student.all
  end

  def show
    @message = if @student.active == false
      "This student is currently inactive."
    else
      "This student is currently active."
    end

  end

  def activate
    @student.active = !@student.active
    @student.save
    redirect_to @student
  end


  private

    def set_student
      @student = Student.find(params[:id])
    end
end