require 'rails_helper'

describe 'the add a lesson process' do
  it 'adds a new lesson' do
    visit lessons_path
    click_on 'Create a New Lesson'
    fill_in 'Name', with: 'Python'
    fill_in 'Description', with: 'The Python Programming Language'
    click_on 'Create Lesson'
    expect(page).to have_content 'Table of Contents'
  end

  it 'gives error when no lesson name is entered' do
    visit new_lesson_path
    click_on 'Create Lesson'
    expect(page).to have_content 'errors'
  end
end
