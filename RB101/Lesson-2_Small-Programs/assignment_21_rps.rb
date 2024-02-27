VALID_CHOICES = %w(rock paper scissors spock lizard)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
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

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().downcase().chomp()
    
    if choice == 's'
      prompt("Invalid: multiple options begin with 's': 'spock' and 'scissors'")
    elsif (choice != 's') && (VALID_CHOICES.any? { |options| options.start_with?(choice) })
      break
    elsif VALID_CHOICES.none? { |options| options.start_with?(choice) }
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Goodbye!")
