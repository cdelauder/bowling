class Game
  attr_accessor :frames
  def initialize(args_hash)
    @frames = args_hash[:frames]
  end
end