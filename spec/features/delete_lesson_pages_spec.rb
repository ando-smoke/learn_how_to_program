require 'rails_helper'

describe 'the delete a lesson process' do
  it 'deletes a preexisting lesson' do
    lesson = Lesson.create(
      name: 'C#',
      description: 'The C# Programming Language'
    )
    visit lesson_path(lesson)
    click_on 'Delete Lesson'
    expect(page).to have_content 'deleted!'
  end
end
