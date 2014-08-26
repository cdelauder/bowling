class Frame
  def init(args_hash)
    @balls = args_hash[:balls]
    @pins = args_hash[:pins]
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