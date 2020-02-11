$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  pp director_data
  index = 0
  length = director_data.values[index + 1].length
  total_gross = 0
  while index < length do
    total_gross += director_data.values[index+1][index][:worldwide_gross]
    index += 1
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
  result = {}
  index = 0
  while index < nds.length do
    result[nds][index] = gross_for_director(nds)
    index += 1
  end
  result
  nil
end
