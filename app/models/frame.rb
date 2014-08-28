class Frame
  attr_accessor :score
  def initialize(args_hash)
    @balls = args_hash[:balls]
    @pins = args_hash[:pins]
    @strike = false
    @spare = false
    @turkey = false
    @score = ''
  end

  def update_frame(score)
    @balls.pop
    remove_pins(score)
  end

  def remove_pins(score)
    if score > 0
      @pins.slice(0..score)
    end
  end
end