require 'rails_helper'

describe 'the edit a lesson process' do
  it 'edits the description of a preexisting lesson' do
    lesson = Lesson.create(
      name: 'Python',
      description: 'The Python Programming Language'
    )
    visit lesson_path(lesson)
    click_on 'Edit Lesson'
    fill_in 'Description', with: 'A must-learn programming language'
    click_on 'Update Lesson'
    expect(page).to have_content 'must-learn'
  end
end
