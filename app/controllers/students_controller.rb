# frozen_string_literal: true

# StudentsController
class StudentsController < ApplicationController
  before_action :set_student, only: %i[show edit update destroy]

  def index
    @students = Student.all
  end

  def show; end

  def new
    @student = Student.new
  end

  def edit; end

  def create
    @student = Student.new(student_params)

    if @student.save
      redirect_to @students
    else
      render new
    end
  end

  def update
    @student = Student.find(params[:id])

    if @student.update(student_params)
      redirect_to @student
    else
      render edit
    end
  end

  def destroy
    @student.destroy

    redirect_to students_url
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :last_name, :maiden_name, :email, :mobile_phone, :curp, :phone, :gender, 
                                    :birthdate, :nationality)
  end
end
