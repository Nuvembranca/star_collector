require 'gosu'
require 'game_window/player'

class GameWindow < Gosu::Window

  def initialize
    super 640, 400, false
    self.caption = 'Gosu Tutorial Game'.freeze
    @background_image = Gosu::Image.new(self, 'media/space.png', true)
    @player = Player.new(self)
    @player.warp(32,24)
  end

  def update
    if button_down? Gosu::KbLeft or button_down? Gosu::GpLeft then
      @player.turn_left
    end
    if button_down? Gosu::KbRight or button_down? Gosu::GpRight then
      @player.turn_right
    end
    if button_down? Gosu::KbUp or button_down? Gosu::GpButton0 then
      @player.accelerate
    end
    @player.move
  end

  def draw
    @player.draw
    @background_image.draw(0,0,0)
  end

  def button_down(id)
    close if id == Gosu::KbEscape
  end
end