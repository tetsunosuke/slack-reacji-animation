require 'rmagick'

include Magick

class EmojiImage
  attr_reader :path
  text = "hogehoge"

  def initialize(text)
    f = Magick::Image.new(64, 64) do
      self.background_color= "white"
    end

    d = Magick::Draw.new

    padding = 1
    fontsize = 64 - padding * 5

    d.annotate(f, 0, 0, padding, -12, text) do
      self.pointsize = fontsize
      self.fill = "#000"
      self.font = 'MPLUSRounded1c-Bold.ttf'
      self.gravity = Magick::NorthGravity
    end

    @path = "#{text}.png"
    f.write(@path)
  end
end

list = ImageList.new
"→#{text}".chars.each { |chr|
  image = EmojiImage.new(chr)
  im = ImageList.new("#{chr}.png")
  list.concat(im)
  File.delete("#{chr}.png")
}
list.delay = 25
list.write("reacji-#{text}.gif")



