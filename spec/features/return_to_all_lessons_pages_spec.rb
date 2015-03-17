require 'rails_helper'

describe 'return to all lessons process' do
  it "returns to the 'display all lessons' page process" do
    lesson = Lesson.create(
      name: 'C#',
      description: 'The C# Programming Language'
    )
    visit lesson_path(lesson)
    click_on 'Return to All Lessons'
    expect(page).to have_content 'Table of Contents'
  end
end
