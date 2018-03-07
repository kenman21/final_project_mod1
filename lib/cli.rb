require_relative 'cli_search'
require 'pry'

def run
  start_award
  user_input = gets.downcase.strip
  if user_input == "search"
    run_search
  elsif user_input == "trivia"
    trivia
  elsif user_input == "random fact"
    random_fact
  elsif user_input == "exit"
    exit_award
  else puts "That's not a valid command. Please try again."
    run
  end
end

def start_award
  puts "Welcome to the Academy Awards! What would you like to do?\n"
  puts "| Search | Trivia | Random Fact | Exit |"
end

def exit_award
  puts "Goodbye!"
end
