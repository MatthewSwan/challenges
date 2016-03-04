# These will be **IMMUTABLE**!!
# All that means is that we only set the instance variables,
# we never point them at anything else after they've been set
class NilNode
  # you'll fill in these methods
  def data
    nil
  end

  def link
    self
  end

  def length
    0
  end

  def min
    nil
  end

  def max
    nil
  end

  def first
    nil
  end

  def last

  end

  def empty?
    true
  end

  def nil?
    true
  end

  def [](number)
    nil
  end

  def insert(number, string)
    NormalNode.new
  end
end

class NormalNode
  # and these methods
  def data

  end
end
