$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  director_index = 0
  director_gross = 0
  director_hash = {}
  while director_index < directors_database.length do
    movie_index = 0 
      while movie_index < directors_database[director_index].length do
        inner_index = 0 
          while inner_index < directors_database[director_index][movie_index].length do
              director_gross += directors_database[director_index][:movies][inner_index][:worldwide_gross]
              director_hash.merge!(directors_database[0][:name] => director_gross)
              inner_index += 1 
          end
          movie_index += 1 
      end
      director_index += 1 
  end 
  
  p director_hash
    
    
# level needed to access each movie's gross directors_database[0][:movies][0][:worldwide_gross]

end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nil
end
