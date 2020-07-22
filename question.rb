class Question

  attr_accessor :player, :result, :integer1, :integer2

  def initialize(player)
    @player = player
    @integer1 = rand(1..20)
    @integer2 = rand(1..20)
    @result = integer1 + integer2
  end
end
