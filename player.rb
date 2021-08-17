class Player
  attr_accessor :lives
  attr_accessor :turn
  attr_reader :name

  def initialize(name)
    @name = name
    @lives = 3
    @turn = false
  end

end