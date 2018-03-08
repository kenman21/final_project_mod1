require 'pry'

def start_trivia
  puts "Welcome to the Academy Awards trivia! Are you ready to play? (y/n)"
  user_input = gets.downcase.strip
  if user_input == "y"
    question_one
  else
    puts "Goodbye!"
    run
  end
end

def question_one
  puts "Here is your first question:\n"
  puts "Which movie won Best Picture in (year)?"
  user_input = gets.downcase.strip
  if user_input == "hello"
    puts "You are correct!"
    question_two
  elsif user_input == "exit"
    puts "Goodbye!"
    run
  else
    puts "Sorry! That is not correct. The right answer is:"
    question_two
  end
end

def question_two
  puts "Here is your second question:\n"
  puts "Which movie won Best Actress in a Leading Role in (year)?"
  user_input = gets.downcase.strip
  if user_input == "hello"
    puts "You are correct!"
    question_three
  elsif user_input == "exit"
    run
  else
    puts "Sorry! That is not correct. The right answer is:"
    question_three
  end
end

def question_three
  puts "Here is your third question:\n"
  puts "Which movie won Best Actor in a Leading Role in (year)?"
  user_input = gets.downcase.strip
  if user_input == "hello"
    puts "You are correct!"
    question_four
  elsif user_input == "exit"
    run
  else
    puts "Sorry! That is not correct. The right answer is:"
    question_four
  end
end

def question_four
  puts "Here is your fourth question:\n"
  puts "Which movie won Best Actress in a Supporting Role in (year)?"
  user_input = gets.downcase.strip
  if user_input == "hello"
    puts "You are correct!"
    question_five
  elsif user_input == "exit"
    run
  else
    puts "Sorry! That is not correct. The right answer is:"
    question_five
  end
end

def question_five
  puts "Here is your last question:\n"
  puts "Which movie won Best Actress in a Supporting Role in (year)?"
  user_input = gets.downcase.strip
  if user_input == "hello"
    puts "You are correct!\n"
    puts "Thanks for playing!"
    run
  elsif user_input == "exit"
    run
  else
    puts "Sorry! That is not correct. The right answer is:"
    puts "Thanks for playing!"
    run
  end
end
