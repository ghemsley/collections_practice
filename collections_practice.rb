def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort do |x, y|
    if x > y
      -1
    elsif x < y
      1
    else
      0
    end
  end
end

def sort_array_char_count(array)
  array.sort do |x, y|
    x.length <=> y.length
  end
end

def swap_elements(array)
  placeholder = array[1]
  array[1] = array[2]
  array[2] = placeholder
  array
end

def swap_elements_from_to(array, index, destination_index)
  placeholder = array[destination_index]
  array[destination_index] = array[index]
  array[index] = placeholder
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  kesha_array = []
  array.each do |string|
    string[2] = '$'
    kesha_array.push(string)
  end
end

def find_a(array)
  array.select do |element|
    element.start_with?('a')
  end
end

def sum_array(array)
  array.reduce(:+)
end

def add_s(array)
  array.each_with_index.collect do |element, index|
    index == 1 ? element : element += 's'
  end
end
