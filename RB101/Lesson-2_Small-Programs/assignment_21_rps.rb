VALID_CHOICES = %w(rock paper scissors spock lizard)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def return_valid_choice(choice)
  VALID_CHOICES.each do |options|
    return options if options.start_with?(choice)
  end
end

def win?(first, second)
  #hash with values that the corresponding key defeats
  game_winner_hash = {
    rock: ["lizard", "scissors"],
    paper: ["rock", "spock"],
    scissors: ["paper", "lizard"],
    spock: ["scissors", "rock"],
    lizard: ["paper", "spock"]
  }
  
  (first == 'rock' && game_winner_hash[:rock].include?(second)) ||
    (first == 'paper' && game_winner_hash[:paper].include?(second)) ||
    (first == 'scissors' && game_winner_hash[:scissors].include?(second)) ||
    (first == 'spock' && game_winner_hash[:spock].include?(second)) ||
    (first == 'lizard' && game_winner_hash[:lizard].include?(second))
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def return_winner_increment(player, computer)
  if win?(player, computer)
    return 1, 0
  elsif win?(computer, player)
    return 0, 1
  else
    return 0, 0
  end
end

player_score = 0
computer_score = 0

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().downcase().chomp()
    
    if choice == 's'
      prompt("Invalid: multiple options begin with 's': 'spock' and 'scissors'")
    elsif VALID_CHOICES.any? { |options| options.start_with?(choice) }
      choice = return_valid_choice(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  
  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")
  
  player_increment, computer_increment = return_winner_increment(choice, computer_choice)
  player_score += player_increment
  computer_score += computer_increment
  
  display_results(choice, computer_choice)
  
  prompt("Current Score - Player: #{player_score}; Computer: #{computer_score}")
  
  if player_score == 3
    prompt("Player wins!")
  elsif computer_score == 3
    prompt("Computer wins!")
  end
  
  if (player_score == 3) || (computer_score == 3)
    prompt("Do you want to play again?")
    answer = Kernel.gets().chomp()
    break unless answer.downcase().start_with?('y')
  end
end

prompt("Thank you for playing. Goodbye!")
