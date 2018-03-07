require 'pry'

def start_award
  puts "Welcome to the Academy Awards! What would you like to do?\n"
  puts "| Search | Trivia | Random Fact | Exit |"
end

def exit_award
  puts "Goodbye!"
end

def run
  user_input = ""
  while user_input
    start_award
    user_input = gets.downcase.strip
    case user_input
    when "search"
      search
    when "trivia"
      trivia
    when "random fact"
      random_fact
    when "exit"
      exit_award
      break
    else
      start_award
    end
  end
end

binding.pry

"puts hi"
