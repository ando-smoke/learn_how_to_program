class SectionsController < ApplicationController
  def new
    @lesson = Lesson.find(params[:lesson_id])
    @section = @lesson.sections.new
  end

  def create
    @lesson = Lesson.find(params[:lesson_id])
    @section = @lesson.sections.new(section_params)
    if @section.save
      flash[:notice] = 'Section successfully added!'
      redirect_to lesson_path(@section.lesson)
    else
      render :new
    end
  end

  private
    def section_params
      params.require(:section).permit(:name)
    end
end
