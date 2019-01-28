class Pivot

  attr_reader :integers

  def initialize(integers)
    @integers = integers
  end

  def get
    integers.each do |index, num|
      left  = integers.slice(0, index)
      right = integers.slice(index + 1, integers.length - 1)

      return index if equal_sum?(left, right)
    end
  end

  private

  def equal_sum?(left, right)
    Array(left).sum == Array(right).sum
  end

end
