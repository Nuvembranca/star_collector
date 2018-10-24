require 'gosu'

class GameWindow < Gosu::Window

  def initialize
    super 640, 400, false
    self.caption = 'Gosu Tutorial Game'.freeze
    @background_image = Gosu::Image.new(self, 'media/space.png', true)
  end

  def update
  end

  def draw
    @background_image.draw(0,0,0)
  end
end