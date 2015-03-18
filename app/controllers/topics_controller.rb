class TopicsController < ApplicationController
  def show
    @lesson = Lesson.find(params[:lesson_id])
    @section = @lesson.sections.find(params[:section_id])
    @topic = @section.topics.find(params[:id])
  end
end
