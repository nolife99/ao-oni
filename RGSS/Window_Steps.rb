class Window_Steps < Window_Base
  def initialize
    super(0, 0, 160, 96)
    self.contents = Bitmap.new(width - 32, height - 32)
    refresh
  end
  def refresh
    self.contents.clear
    self.contents.font.color = system_color
    self.contents.draw_text(4, 0, 120, 32, "Steps")
    self.contents.font.color = normal_color
    self.contents.draw_text(4, 32, 120, 32, $game_party.steps.to_s, 2)
  end
end