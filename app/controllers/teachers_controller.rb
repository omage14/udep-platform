# frozen_string_literal: true

# TeachersController
class TeachersController < ApplicationController
  before_action :set_teacher, only: %i[show edit update destroy]

  def index
    @teachers = Teacher.all
  end

  def show; end

  def new
    @teacher = Teacher.new
  end

  def edit; end

  def create
    @teacher = Teacher.new(teacher_params)

    if @teacher.save
      redirect_to @teacher
    else
      render new
    end
  end

  def update
    @teacher = Teacher.find(params([:id]))

    if @teacher.update(teacher_params)
      redirect_to @teacher
    else
      render edit
    end
  end

  def destroy
    @teacher.destroy

    redirect_to teachers_url
  end

  private

  def set_teacher
    @teacher = Teacher.find(params[:id])
  end

  def teacher_params
    params.require(:teacher).permit(:name, :last_name, :maiden_name,
                                    :email, :mobile_phone, :gender, :nationality, :birthdate, :rfc, :curp)
  end
end
