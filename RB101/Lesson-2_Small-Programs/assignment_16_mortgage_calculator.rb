# PSEUDO CODE:

# Prompt user for Loan Amount in dollars, roundest to the nearest dollar.
# =>If the user enters a decimal or invalid loan amount, re prompt user.
# Prompt user for the APR in decimal format.
# =>If the user enters an invalid percentage, re prompt user.
# Prompt user to enter the loan duration in months and years
# =>First, prompt user for total number of years.
# =>Second, prompt user for total number of months.

# Calculate monthly interest rate, loan duration in months, and
# monthly payment from the above information:
# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months
# m = p * (j / (1 - (1 + j)**(-n)))

# FORMAL PSEUDO-CODE:

# GET loan amount from user, rounded to the nearest dollar.
#   IF invalid, loop back to previous line prompt.
# GET APR from user, in decimal format.
#   IF invalid, loop back to previous line prompyt.
# GET loan duration from user in years and months.
#   IF months > 12, loop back to month prompt.

def valid_number?(input)
  input.to_i.to_s == input
end

loan_amount = ''
apr = ''
loan_duration_in_years = ''
loan_duration_in_months = ''

loop do
  puts "Enter the loan amount, rounded to the nearest dollar."
  loan_amount = gets.chomp

  break if valid_number? loan_amount

  puts "hmm... something isn't right."
end

loop do
  puts "Enter the APR, in decimal format."
  apr = gets.chomp

  break if (apr.to_f.to_s == apr) || (valid_number? apr)

  puts "hmm.. something isn't right."
end

loop do
  puts "Enter the loan duration in years and months. First, enter the
    number of total years:"
  loan_duration_in_years = gets.chomp

  break if valid_number? loan_duration_in_years

  puts "hmm.. something isn't right."
end

loop do
  puts "Now enter the number of total months (Must be less than 12):"
  loan_duration_in_months = gets.chomp

  break if (valid_number? loan_duration_in_months) && (loan_duration_in_months.to_i < 12)

  puts "hmm.. something isn't right."
end

monthly_interest_rate = (apr.to_f / 12.0) / 100
loan_duration_total_months = (loan_duration_in_years.to_i * 12) + \
  loan_duration_in_months.to_i
monthly_payment = loan_amount.to_f * (monthly_interest_rate / \
  (1 - (1 + monthly_interest_rate)**-loan_duration_total_months))

puts "Your monthly payment comes out to #{monthly_payment}, for #{loan_duration_total_months} months, at
  a monthly interest rate of #{monthly_interest_rate}%."