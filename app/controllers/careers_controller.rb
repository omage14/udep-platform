# frozen_string_literal: true

# CareersController
class CareersController < ApplicationController
  before_action :set_career, only: %i[show edit update destroy]

  def index
    @careers = Career.all
  end

  def show; end

  def new
    @career = Career.new
  end

  def edit; end

  def create
    @career = Career.new(career_params)

    if @career.save
      redirect_to @careers
    else
      render new
    end
  end

  def update
    @career = Career.find(params[:id])

    if @career.update(career_params)
      redirect_to @career
    else
      render edit
    end
  end

  def destroy
    @career.destroy

    redirect_to careers_url
  end

  private

  def set_career
    @career = Career.find(params[:id])
  end

    def career_params
      params.require(:career).permit(:name)
    end
end
