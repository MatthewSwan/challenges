def block_to_proc(&block)
  block
end

def wrap(value)
  block_to_proc { value }
end

def call_twice(&block)
  i = 0
  while i < 2
    block.call
    i += 1
  end
end

def call_thrice(&block)
  i = 0
  while i < 3
    block.call
    i += 1
  end
end

def yield_first(array, &block)
  if array == []
    array
  else
    block.call(array[0])
  end
end

def yield_em_all(array, &block)
end

def yield_two(array, &block)
  i = 0
  while i < array.length
    block.call(array[i])
    i += 1
  end
end

def yield_three(array, &block)
  i = 0
  while i < array.length
    block.call(array[i])
    i += 1
  end
end

def yield_four(array, &block)
  i = 0
  while i < array.length
    block.call(array[i])
    i += 1
  end
end

def yield_five(array, &block)
  i = 0
  while i < array.length
    block.call(array[i])
    i += 1
  end
end

def yield_six(array, &block)
  i = 0
  while i < array.length
    block.call(array[i])
    i += 1
  end
end

def yield_seven(array, &block)
  i = 0
  while i < array.length
    block.call(array[i])
    i += 1
  end
end

def yield_eight(array, &block)
  i = 0
  while i < array.length
    block.call(array[i])
    i += 1
  end
end

def yield_nine(array, &block)
  i = 0
  while i < array.length
    block.call(array[i])
    i += 1
  end
end

def yield_ten(array, &block)
  i = 0
  while i < array.length
    block.call(array[i])
    i += 1
  end
end

def yield_with_while_loop(array, &block)
  i = 0
  while i < array.length
    block.call(array[i])
    i += 1
  end
end

def yield_with_each(array, &block)
  if array == []
    array
  else
    result = []
    array.each { |index| result << index }
    result
  end
end
