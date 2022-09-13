# frozen_string_literal: true

# SubjectsController
class SubjectsController < ApplicationController
  before_action :set_subject, only: %i[show edit update destroy]

  def index
    @subjects = Subject.all
  end

  def show; end

  def new
    @subject = Subject.new
  end

  def edit; end

  def create
    @subject = Subject.new(subject_params)

    if @subject.save
      redirect_to @subjects
    else
      render new
    end
  end

  def update
    @subject = Subject.find(params[:id])

    if @subject.update(subject_params)
      redirect_to @career
    else
      render edit
    end
  end

  def destroy
    @subject.destroy

    redirect_to subjects_url
  end

  private

  def set_subject
    @subject = Subject.find(params[:id])
  end

  def subject_params
    params.require(:subject).permit(:name, :code)
  end
end
