require 'rails_helper'

describe 'the edit a section process' do
  it 'edits the name of a preexisting section' do
    lesson = Lesson.create(
      name: 'Python',
      description: 'The Python Programming Language'
    )
    section = Section.create(
      name: 'Operators',
      lesson_id: lesson.id
    )
    visit lesson_path(lesson)
    click_on 'Edit'
    fill_in 'Name', with: 'Operators intro'
    click_on 'Update Section'
    expect(page).to have_content 'updated!'
  end
end
