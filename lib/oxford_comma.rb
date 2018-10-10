require 'pry'

def oxford_comma(array)
  ands = array.join(' and ')
  puts ands
  # binding.pry

end

oxford_comma(["this", "that", "other"])
