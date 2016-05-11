# Bank Account User Entry

accounts = []

2.times do

  user_info = {}
  puts "Please enter the first name:"
  user_info[:first_name] = gets.chomp
  puts "Please enter the last name:"
  user_info[:last_name] = gets.chomp
  puts "Please enter email:"
  user_info[:email] = gets.chomp
  until user_info[:email].include?("@") && user_info[:email].include?(".com")
    puts "Please enter correct email:"
    user_info[:email] = gets.chomp
  end
  user_info[:account_number] = rand(10 ** 10)

  accounts << user_info

  p accounts
end

puts "Please enter the account number you wish to access:"
entry = gets.chomp.to_i
accounts.each do |user|
    if entry == user[:account_number]
      puts "FIRST NAME: #{user[:first_name]}"
      puts "LAST NAME: #{user[:last_name]}"
      puts "EMAIL: #{user[:email]}"
      puts "ACCT #: #{user[:account_number]}"
    end
end

# accounts.each do |user|
#   puts "FIRST NAME: #{user[:first_name]}"
#   puts "LAST NAME: #{user[:last_name]}"
#   puts "EMAIL: #{user[:email]}"
#   puts "ACCT #: #{user[:account_number]}"
#   puts
# end
