
require 'pry'

def search
  puts "What would you like to search by?\n"
  puts "| Year | Winners | Nominees | Ceremony | Main Menu | Exit |"
end

def run_search
  user_input = ""
  while user_input
    search
    user_input = gets.downcase.strip
    case user_input
    when "year"
      year
      break
    when "winners"
      winners
    when "nominees"
      random_fact
    when "ceremony"
    when "main menu"
      run
    when "exit"
      exit_award
      break
    # else
    #   start_award
    end
  end
end
