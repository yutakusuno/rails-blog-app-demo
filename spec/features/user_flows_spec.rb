require('rails_helper')

RSpec.feature "UserFlows", type: :feature do
  scenario 'user creates a new post' do
    visit new_post_path

    fill_in 'Title', with: 'Sample Post'
    fill_in 'Body', with: 'This is a sample post content.'
    click_button 'Create Post'

    expect(page).to have_text('Post was successfully created.')
    expect(page).to have_text('Sample Post')
    expect(page).to have_text('This is...') # Because of format_post_body 
  end
end
