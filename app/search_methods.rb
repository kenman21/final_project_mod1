# Define the methods for the CLI here
require 'pry'

#Retrieve all Nominee entries matching the (name) entered by the User.
def n_occurances(name)
  Nominee.all.where(name: name)
end

#Retreive all winning nominations for (name)
def n_all_wins(name)
  times_won = n_occurances(name).map {|nominee| nominee.nominations.where(win: 1)}
  times_won = times_won.reject {|nominee| nominee == []}
end

#Retrieve all winning nomination category names for (name)
def n_all_wins_categories(name)
  win_nom_cats = n_all_wins(name).map {|nomination| nomination.first.category_name}
end

#Retrieve all unique awards
def n_uniq_wins(name)
  n_all_wins_categories(name).uniq
end

#Format wins and nominations into output to User
def n_print_wins(name)
  string = ""
  awc = n_all_wins_categories(name)
  uw = n_uniq_wins(name)
  no = n_occurances(name)
  uw.each do |win|
    string = string + "Best #{win} #{awc.count(win)} time(s)\n"
  end
  puts "#{name} has been nominated #{no.size} time(s) and has won #{awc.size} time(s)"
  puts "#{name} has won the awards for:"
  puts string
end
