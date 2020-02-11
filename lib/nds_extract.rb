$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  index = 0
  length = director_data[:movies].length
  total_gross = 0
  while index < length do
    total_gross += director_data[:movies][index][:worldwide_gross]
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
  pp gross_for_director(nds)
  index = 0
#  while index < nds.length do
#    result[nds][index][:name] = gross_for_director(nds)
#    index += 1
#  end
#  result
  nil
end
