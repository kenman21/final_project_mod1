# require_relative './db/academy_awards'
# require 'pry'

# require_relative '../app/models'

academy_awards_array = []

File.open('./db/academy_awards.csv').each do |row|
  academy_awards_array << row.split(",")
end

academy_awards_array.each do |award|
  nominee = Nominee.create(name: award[4])
  movie = Movie.create(name: award[5])
  nomination = Nomination.create(category_name: award[2], year: award[0], win: award[3], nominee_id: nominee.id, movie_id: movie.id )
end
