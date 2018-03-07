# require_relative './db/academy_awards'
require 'pry'

# require_relative '../app/models'

academy_awards_array = []

File.open('./db/academy_awards.csv').each do |row|
  academy_awards_array << row.split(",")
end

actors_actress = ["Actor", "Actress", "Actor in a Supporting Role","Actress in a Supporting Role","Actor in a Leading Role",
 "Actress in a Leading Role"]
count = 0

academy_awards_array = academy_awards_array.map do |nomination|
  nomination = nomination.map {|nom| nom.split.join(" ").gsub("\n","")}
end

academy_awards_array.each do |award|
  if actors_actress.include?(award[2]) || count <= 73
    movie = Movie.create(name: award[5])
    nominee = Nominee.create(name: award[4])
  else
    movie = Movie.create(name: award[4])
    nominee = Nominee.create(name: award[4])
  end
  nomination = Nomination.create(category_name: award[2], year: award[0], win: award[3], nominee_id: nominee.id, movie_id: movie.id )
  count += 1
end
