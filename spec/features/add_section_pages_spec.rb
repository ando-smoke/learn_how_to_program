require 'rails_helper'

describe 'the add a section process' do
  it 'adds a new section to a lesson' do
    lesson = Lesson.create(
      name: 'Ruby',
      description: 'The Ruby Programming Language'
    )
    visit lesson_path(lesson)
    click_on 'Add New Section'
    fill_in 'Name', with: 'Operators'
    click_on 'Create Section'
    expect(page).to have_content 'Ruby'
  end

  it 'gives error when no section name is entered' do
    lesson = Lesson.create(
      name: 'Ruby',
      description: 'The Ruby Programming Language'
    )
    visit new_lesson_section_path(lesson)
    click_on 'Create Section'
    expect(page).to have_content 'errors'
  end
end
