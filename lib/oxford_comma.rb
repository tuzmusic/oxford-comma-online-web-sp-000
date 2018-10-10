require 'pry'

def oxford_comma(array)
  return array.first if array.size == 1
  str = array.shift
  array.each do |item|
    str << " and" if item == array.last
    str << " #{item}"   # this messes up first item each time
    str << "," if array.size > 2 && item != array.last
  end
  str
end

# oxford_comma(["this", "that", "other"])
