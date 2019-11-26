RSpec.feature 'entering in player names', type: :feature do
  scenario 'filling in a form' do
    visit '/form'
    fill_in 'first-name', with: 'sam'
    click_button 'submit-button'
    expect(current_path).to eql '/names'
    expect(page).to have_content 'sam'
  end
end