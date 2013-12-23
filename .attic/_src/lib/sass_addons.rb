module Sass::Script::Functions
  require 'autocolors'

  def lch(lightness,chroma,hue)
    color = AutoColors::Color.new([lightness.value.to_f,10,10])
    color.hue = hue.value.to_f
    color.chroma = chroma.value.to_f
    return Sass::Script::Color.new([color.r, color.g, color.b])
  end
  declare :lch, :args => [:lightness, :chroma, :hue]

  def lch2(lightness, chroma, hue_index)
    color = AutoColors::Color.new([lightness.value.to_f,10,10])
    color.hue_index = hue_index.value.to_i
    color.chroma = chroma.value.to_f
    return Sass::Script::Color.new([color.r, color.g, color.b])
  end
  declare :lch2, :args => [:lightness, :chroma, :hue_index]
end
