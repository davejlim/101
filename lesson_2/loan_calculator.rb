def prompt(message)
  Kernel.puts("=> #{message}")
end

def invalid_number
  prompt("The number you entered wasn't valid. Please try again.")
end

def valid_number(input)
  input.to_i > 0 && input.to_i.to_s == input || input.to_f.to_s == input
end

def monthly_payment_calculation(loan, interest, duration)
  monthly_payment = loan * (interest / (1 - (1 + interest)**(-duration)))
end

def another_calculation?
  prompt("Would you like to calculate the monthly payment of another loan? Y/N")
  gets.chomp.downcase.start_with?("y")
end

def clear
  system('clear') || system('cls')
end

loop do
  loan_amount = ''
  apr = ''
  loan_duration_months = ''
  monthly_payment = ''

  clear

  prompt("Welcome to Loan Calculator! We can calculate your monthly payment.")

  loop do
    prompt("To start, please share the total amount of your loan.")
    loan_amount = gets.chomp

    prompt(loan_amount)

    if valid_number(loan_amount)
      break
    else
      invalid_number
    end
  end

  loop do
    prompt("Next enter your annual percentage rate (APR) without a % symbol.")

    apr = gets.chomp

    if valid_number(apr)
      break
    else
      invalid_number
    end
  end

  prompt(apr)

  loop do
    prompt("Last step! Just enter your loan duration in months:")

    loan_duration_months = gets.chomp

    if valid_number(loan_duration_months)
      break
    else
      invalid_number
    end
  end

  prompt(loan_duration_months)

  monthly_interest_rate = apr.to_f / 1200

  prompt(monthly_interest_rate)

  # monthly_payment_calculation(loan_amount.to_f, monthly_interest_rate.to_f, loan_duration_months.to_f)

  monthly_payment =  loan_amount.to_f * (monthly_interest_rate.to_f / (1 - (1 + monthly_interest_rate.to_f)**(-loan_duration_months.to_f)))

  prompt("Your monthly payment is $#{format('%02.2f', monthly_payment)}.")

  # prompt("Would you like to calculate the monthly payment of another loan? Y/N")
  # answer = gets.chomp
  # break unless answer.chomp.downcase.start_with?("y")
  break unless another_calculation?
end

prompt("Thank you for using our calculator! Goodbye!")
