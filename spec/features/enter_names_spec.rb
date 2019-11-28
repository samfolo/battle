require_relative 'web_helpers'

RSpec.feature 'entering in player names', type: :feature do
  scenario 'filling in a form' do
    sign_in_and_play
    expect(current_path).to eql '/play'
    expect(page).to have_content 'sam'
  end
end