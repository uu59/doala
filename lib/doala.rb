require "doala/version"

module Doala
  def face
    '(⌒(´・△・`)⌒)'
  end

  def business_friend
    'つば九郎'
  end

  def move(n = 20)
    f = bakuten
    n.times do |i|
      yield "\r#{f.resume.rjust(face.length + i)}"
      sleep 0.2
    end
  end

  def height
    'アジアの頂点 cm'
  end

  def weight
    '圧倒的な存在感 kg'
  end

  # to be private
  def bakuten
    tr_face = -> (s) { s.tr("´`△⌒", ",,▽‿"); }
    Fiber.new do
      bakuten_chu = false
      loop do
        Fiber.yield(bakuten_chu ? tr_face.call(face) : face)
        bakuten_chu = !bakuten_chu
      end
    end
  end

  module_function :face, :business_friend, :move, :bakuten, :height, :weight
  private_class_method :bakuten
end
