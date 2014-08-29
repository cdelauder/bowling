class Frame
  attr_reader :balls, :pins, :score, :spare, :strike, :turkey
  def initialize(args_hash)
    @balls = args_hash[:balls]
    @pins = args_hash[:pins]
    @strike = false
    @spare = false
    @turkey = false
    @score = 0
  end

  def update_frame(score)
    @balls.pop
    remove_pins(score)
    update_score(score)
  end

  def remove_pins(score)
    if score > 0
      @pins.slice!(0..score)
    end
  end

  def update_score(score)
    if score == 10
      @score = 10
      @strike = true
    else
      @score += score
      toggle_spare?
    end
  end

  def toggle_spare?
    if @pins.length == 0
      @spare = true
    end
  end
end