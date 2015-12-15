  # Mergesort: A stable divide-and-conquer sort that sorts small chunks of the container and then merges them together.
  # Returns an array of the sorted elements.
  # Requirements: Container should implement []
  # Time Complexity: О(n log n) average and worst-case
  # Space Complexity: О(n) auxiliary
  # Stable: Yes
  # 
  #   Algorithms::Sort.mergesort [5, 4, 3, 1, 2] => [1, 2, 3, 4, 5]
  def self.mergesort(container)
    return container if container.size <= 1
    mid   = container.size / 2
    left  = container[0...mid]
    right = container[mid...container.size]
    merge(mergesort(left), mergesort(right))
  end

  def self.merge(left, right)
    sorted = []
    until left.empty? or right.empty?
      left.first <= right.first ? sorted << left.shift : sorted << right.shift
    end
    sorted + left + right
  end