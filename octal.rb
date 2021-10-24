class Octal
  attr_reader :number

  def initialize(num)
    @number = num
  end

  def to_decimal
    number_list = %w(0 1 2 3 4 5 6 7)
    number_array = number.chars.map do |n|
      return 0 unless number_list.include?(n)
      n.to_i
    end

    total = 0
    number_array.reverse.each_with_index { |num, idx| total += num * (8**idx) }
    total
  end
end
