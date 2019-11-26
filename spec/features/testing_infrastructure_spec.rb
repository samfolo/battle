RSpec.feature 'infrastructure working', type: :feature do
  scenario 'is working' do
    visit '/'
    expect(page).to have_content 'Testing infrastructure working!'
  end
end