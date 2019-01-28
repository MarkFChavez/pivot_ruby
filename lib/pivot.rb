class Pivot

  attr_reader :integers

  NONE_FOUND = -1

  def initialize(integers)
    @integers = integers
  end

  def get
    integers.each_index do |index|
      next if index == 0

      left  = integers.slice(0, index)
      right = integers.slice(index + 1, integers.length - 1)

      return index if equal_sum?(left, right)
    end

    return NONE_FOUND
  end

  private

  def equal_sum?(left, right)
    Array(left).sum == Array(right).sum
  end

end
