$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'


      # A director's combined earnings
      
def gross_for_director(d)
  total = 0
  index = 0
  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end
  total
end


      # Hash of each director and his combined earnings

def directors_totals(source)
  result = {}
  dir_index = 0
  while dir_index < source.size do
#    director = source[dir_index]
    result[source[dir_index][:name]] = gross_for_director(source[dir_index])
    dir_index += 1
  end
  result
end


      # Array of directors 

def list_of_directors(source)
  dir_array = []
  i = 0
  while i < source.size do
    dir_array[i] = source[i][:name]
  end
  dir_array
end


      # Combined total of all directors' earnings

def total_gross(source)
  grand_total = 0
  dir_list = list_of_directors(source)
  sums = directors_totals(source)
  i = 0
  while i < dir_list.size do
    grand_total += sums[dir_list[i]]
    i += 1
  end
  grand_total
end


  
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
  
