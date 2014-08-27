helpers do
  def start_game
    args = {frames: make_frames}
    game = Game.new(args)
  end

  def make_frames
    frames = []
    10.times do 
      args = {balls: make_balls, pins: make_pins}
      frames << Frame.new(args)
    end
    frames
  end

  def make_balls
    balls = []
    2.times do 
      balls << Ball.new
    end
    balls
  end

  def make_pins
    pins = []
    10.times do
      pins << Pin.new
    end
    pins
  end

end
