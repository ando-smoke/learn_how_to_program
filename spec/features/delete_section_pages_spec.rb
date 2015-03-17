require 'rails_helper'

describe 'the delete a section process' do
  it 'deletes a preexisting section' do
    lesson = Lesson.create(
      name: 'Python',
      description: 'The Python Programming Language'
    )
    section = Section.create(
      name: 'Operators',
      lesson_id: lesson.id
    )
    visit lesson_path(lesson)
    click_on 'Delete'
    expect(page).to have_content 'deleted!'
  end
end
