# variable_scope.rb Variable Scope Testing

while answer.downcase != 'n' do
  puts "Continue? (y/n)"
  answer = gets.chomp
end

loop do
  puts "Continue? (y/n)"
  answer = gets.chomp
  break if answer.downcase == 'n'
end  