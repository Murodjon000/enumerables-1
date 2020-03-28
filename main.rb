module Enumerable
  def my_each
    for element in self
      yield(element)
    end
  end

  def my_each_with_index
    for element in self
      yield(self[element], index)
    end
  end

  def my_select
    filter = []
    my_each do |element|
      filter.push(element) if yield(element)
    end
    filter
  end
end
