class Pivot

  attr_reader :numbers

  NO_PIVOT_FOUND = -1

  def initialize(numbers)
    @numbers = numbers
  end

  def get
    last_idx = numbers.length - 1

    numbers.each_index do |current_idx|
      next if current_idx == 0
      next if current_idx == last_idx

      left  = numbers.slice(0, current_idx)
      right = numbers.slice(current_idx + 1, last_idx)

      return current_idx if pivot_found?(left, right)
    end

    NO_PIVOT_FOUND
  end

  private

  def pivot_found?(left, right)
    Array(left).sum == Array(right).sum
  end

end
