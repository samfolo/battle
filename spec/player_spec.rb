require 'player'

RSpec.describe Player do
  let(:test_player) { Player.new('sam') }

  it 'has a name' do
    expect(test_player.name).to eq 'sam'
  end

  it 'can take damage' do
    expect { test_player.take_damage }.to change { test_player.hit_points }.by -10
  end
end