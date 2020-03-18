require "raindrops/version"

module Raindrops
  class Convert_to_num
    attr_reader :num
    def initialize (num)
      @num = num
    end
    def convert
      factors = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}
      text = ''
      factors.each do |factor,word|
        if @num % factor == 0
          text += word
        end
      end
        text = text.empty? ? @num.to_s : text
    end
  end
end

