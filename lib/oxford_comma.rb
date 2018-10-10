require 'pry'

def oxford_comma(array)
  return array.first if array.size == 1
  str = array.shift
  array.each do |item|
    str << item == array.last ? " and" : ","
    # str << "," if item != array.last
    # str << " and" if item == array.last
    str << " #{item}"   # this messes up first item each time
  end
  str
end

# oxford_comma(["this", "that", "other"])
