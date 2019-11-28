class Game
  attr_reader :player_1, :player_2
  
  def initialize(player_1 = nil, player_2 = nil)
    @player_1 = player_1
    @player_2 = player_2
  end

  def attack(player)
    player.take_damage
  end

  def add_players(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end
end