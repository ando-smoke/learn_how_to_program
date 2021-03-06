class SectionsController < ApplicationController
  def show
    @lesson = Lesson.find(params[:lesson_id])
    @section = Section.find(params[:id])
  end

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

  def edit
    @lesson = Lesson.find(params[:lesson_id])
    @section = @lesson.sections.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:lesson_id])
    @section = @lesson.sections.find(params[:id])
    if @section.update(section_params)
      flash[:notice] = 'Section successfully updated!'
      redirect_to lesson_path(@section.lesson)
    else
      render :edit
    end
  end

  def destroy
    @lesson = Lesson.find(params[:lesson_id])
    @section = @lesson.sections.find(params[:id])
    @section.destroy
    flash[:notice] = 'Section successfully deleted!'
    redirect_to lesson_path(@lesson)
  end

  private
    def section_params
      params.require(:section).permit(:name)
    end
end
