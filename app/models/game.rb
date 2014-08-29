class Game
  attr_accessor :frames
  attr_reader :score
  def initialize(args_hash)
    @frames = args_hash[:frames]
    @current_frame = 0
    @score = 0
  end

  def bowl
    @current_frame += 1 if @frames[@current_frame].balls.length == 0 
    @frames[@current_frame].update_frame(rand(@frames[@current_frame].pins.length + 1))
    check_for_strike
    update_score
  end

  def frames
    @frames
  end

  def check_for_strike
    if @frames[@current_frame].score == 10
      @current_frame += 1
    end
  end

  def update_score
    @score = 0
    @frames.map {|frame| @score += frame.score}
  end

end