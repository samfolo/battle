require_relative 'web_helpers'

RSpec.feature 'hit points', type: :feature do
  scenario 'viewing a player\'s hit points' do
    sign_in_and_play
    expect(page).to have_content 'Hit Points'
  end

  scenario 'when player 1 attacks player 2' do
    sign_in_and_play
    click_on 'basic-attack-1'
    expect(page).to have_content 'sam Hit Points: 90'
  end
end