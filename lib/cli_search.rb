
require 'pry'


def run_search
  search
  user_input = gets.downcase.strip
  if user_input == "name"
    name
  elsif user_input == "movie"
    movie
  elsif user_input == "winners"
    winners
  elsif user_input == "year"
    year
  elsif user_input == "category"
    category
  elsif user_input == "main menu"
    run
  elsif user_input == "exit"
    exit_award
  else puts "That's not a valid command. Please try again."
    run_search
  end
end

def name
  puts "What name would you like to search for?"
  user_input = gets.downcase.chomp
  #if database does not include name :
    puts "Please enter a valid name."
  # else
    #return all wins and nominations for person
end

def movie
  puts "What movie would you like to search for?"
  user_input = gets.downcase.chomp
  #if database does not include name:
    puts "Please enter a valid movie name."
  # else
    #return all wins and nominations for person
end

def winners
  #all winners
end

def year
  puts "What year (between 1927 - 2015) would you like to see?"
  user_input = gets.chomp.to_i
    if user_input.between?(1927,2015)
      puts "Hello"#all information pertaining to that year
      run
    else
      puts "That year is not in our database. Would you like to try again or exit?"
      user_input = gets.downcase.strip
      if user_input == "try again"
        year
      elsif user_input == "exit"
        run_search
      end
  end
end

def category
  puts "Please enter the category you would like to see:\n"
  show_category
  user_input = gets.downcase.chomp
  puts "Here is a list of every winner and nominee for the selected category:"
  #return list of winners and nominees for selected category
  run_search
  binding.pry
end

def show_category
  category = []
  Nomination.all.each do |nom|
    if category.include?(nom.category_name)
      next
    else
      category << nom.category_name
    end
  end
  category.sort.each {|name| puts "#{name}\n"}
end

def search
  puts "What would you like to search by?\n"
  puts "| Name | Movie | Winners | Year | Category | Main Menu | Exit |"
end

def exit
  "Goodbye"
end
