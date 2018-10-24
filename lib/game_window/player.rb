class Player
  def initialize(window)
    @image = Gosu::image.new(window, 'media/starfighter.bmp', false)
    @x = @y = @vel_x = @val_y = @angle = 0.0
    @score = 0
  end

  def warp(x, y)
    @x, @y = x, y
  end

  def turn_left
  end

  def turn_right
  end

  def accelerate
  end

  def move
  end

  def draw
  end
end