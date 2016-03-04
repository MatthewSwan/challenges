# A function is a method that doesn't use any instance variables
# So it only works with its arguments, as local variables


# These ones are good to start with:
def list_first(list)
  if list.head
    list.head.data
  end
end

def list_shift(list)
  if list.head
    node = list.head
    list.head = list.head.link
    node.data
  end
end

def list_unshift(list, data)
  # Try typing this into pry: show-source Node
  list.head = Node.new(data, list.head)
  list
end


# Probably a nice intermediate set
def list_size(list)
  if list.head
    node = list.head
    i = 1
    while node.link != nil
      node = node.link
      i += 1
    end
    i
  else
    0
  end
end


def list_last(list)
  if list.head
    node = list.head
    while node
      last = node.data
      node = node.link
    end
    last
  end
end


def list_min(list)
  node = list.head
  return nil if node.nil?

  min = node.data
  while node
    data = node.data
    min  = data if data < min
    node = node.link
  end
  min
end

def list_max(list)
  node = list.head
  return nil if node.nil?

  max = node.data
  while node
    max = node.data if node.data > max
    node = node.link
  end
  max
end

# These ones are harder
def list_at(list, index)
  node = list.head
  return nil if node.nil?

  position = []
  while node
    position << node.data
    node = node.link
  end
  position[index]
end

def list_insert(list, index, data)
  list.head = node_insert(list.head, index, data)
  list
end

def node_insert(node, index, data)
  index.zero? and return Node.new(data, node)
  node        or  return Node.new(nil, node_insert(nil, index-1, data))
  Node.new node.data, node_insert(node.link, index-1, data)
end
