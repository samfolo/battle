require 'spec_helper'

def sign_in_and_play
  visit '/'
  fill_in 'first-name', with: 'sam'
  fill_in 'second-name', with: 'other guy'
  click_button 'submit-button'
end