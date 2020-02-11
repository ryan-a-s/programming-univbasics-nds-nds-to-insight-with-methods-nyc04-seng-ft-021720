$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  pp director_data.values[1][0][:worldwide_gross]
  outer_index = 0
  total_gross = 0
  dir_length = director_data.length
  while outer_index < length do
    inner_index = 0
    movies_length = director_data[:movies].length
      while inner_index < movies_length
        worldwide_gross = director_data.values[outer_index+1][inner_index][:worldwide_gross]
        total_gross += worldwide_gross
        inner_index += 1
      end
    outer_index += 1
  end
  total_gross
#  while index < director_data.length do

#  end
#  index += 1
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
#  result = {}
#  index = 0
#  while index < nds.length do
#    result[nds][index] = gross_for_director(nds)
#    index += 1
#  end
#  result
#  nil
end
