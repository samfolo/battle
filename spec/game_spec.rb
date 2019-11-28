require 'game'

RSpec.describe Game do
  let(:test_game) { Game.new }
  let(:player_1) { double :player, name: :sam }
  let(:player_2) { double :player, name: :other_guy }

  it 'allows players to attack each other' do
    test_game.add_players(player_1, player_2)

    expect(player_2).to receive :take_damage
    test_game.attack(test_game.player_2)
  end
end
