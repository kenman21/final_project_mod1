require_relative 'cli_search'
require 'pry'

def run
  user_input = ""
  while user_input
    start_award
    user_input = gets.downcase.strip
    case user_input
    when "search"
      run_search
      break
    when "trivia"
      trivia
    when "random fact"
      random_fact
    when "exit"
      exit_award
      break
    # else
    #   start_award
    end
  end
end

def start_award
  puts "Welcome to the Academy Awards! What would you like to do?\n"
  puts "| Search | Trivia | Random Fact | Exit |"
end

def exit_award
  puts "Goodbye!"
end


"puts hi"
