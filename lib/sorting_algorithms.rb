require 'pry'

class Array
  def bubble_sort
    loop do
      swapped = false

      (length - 1).times do |i|
        if self[i] > self[i + 1]
          self[i], self[i + 1] = self[i + 1], self[i]
          swapped = true
        end
      end

      break unless swapped
    end
    self
  end

  def insertion_sort
    length.times do |i|
      while i > 0
        if self[i - 1] > self[i]
          self[i], self[i - 1] = self[i - 1], self[i]
        else
          break
        end
        i -= 1
      end
    end
    self
  end

  def selection_sort
    for i in 0..(length - 1)
      min_index = i
      for j in (i + 1)..(length - 1)
        min_index = j if self[j] < self[min_index]
      end
      self[i], self[min_index] = self[min_index], self[i] if min_index != i
    end
    self
  end
end
