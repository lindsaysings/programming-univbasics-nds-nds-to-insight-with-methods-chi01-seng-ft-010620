$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
i = 0
total = 0
hash = {}
while i < director_data[:movies].length do
  total += director_data[:movies][i][:worldwide_gross]
  i += 1
end
hash.merge!(director_data[:name] => total)
return total
end
    
# level needed to access each movie's gross directors_database[0][:movies][0][:worldwide_gross]



# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
total = 0
director_movie_index = 0

while director_movie_index < nds[:movies]. count do
total += directors_database[5][:movies][director_movie_index][:worldwide_gross]
director_hash.merge!(directors_database[5][:name] => total)
director_movie_index += 1
end
end
