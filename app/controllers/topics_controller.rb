class TopicsController < ApplicationController
  def show
    @lesson = Lesson.find(params[:lesson_id])
    @section = @lesson.sections.find(params[:section_id])
    @topic = @section.topics.find(params[:id])
  end

  def new
    @lesson = Lesson.find(params[:lesson_id])
    @section = @lesson.sections.find(params[:section_id])
    @topic = @section.topics.new
  end

  def create
    @lesson = Lesson.find(params[:lesson_id])
    @section = @lesson.sections.find(params[:section_id])
    @topic = @section.topics.new(topic_params)
    if @topic.save
      flash[:notice] = 'Topic successfully added!'
      redirect_to lesson_section_path(@lesson, @section)
    else
      render :new
    end
  end

  private
    def topic_params
      params.require(:topic).permit(:name, :topic_text)
    end
end
