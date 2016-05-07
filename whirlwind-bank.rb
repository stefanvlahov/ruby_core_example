# first attempt

# accounts = []
# puts "Enter your first name:"
# first_name = gets.chomp
# accounts.push(account(first_name))
# puts "Enter your last name:"
# last_name = gets.chomp
# accounts.push(account(last_name))
# puts "Enter your email:"
# email = gets.chomp
# accounts.push(account(email))
#
# p accounts

# second attempt

# def account(first_name, last_name, email)
#   {
#     first_name: first_name,
#     last_name: last_name,
#     email: email,
#   }
# end
#
# p accounts
#

# third attempt

# accounts_array = []
#
# 2.times do
#   @accounts = {}
#   puts "Please enter a first name:"
#   first_name = gets.chomp
#   puts "Please enter a last name:"
#   last_name = gets.chomp
#   puts "Please enter an email:"
#   email = gets.chomp
#   @accounts[:first_name] = first_name
#   @accounts[:last_name] = last_name
#   @accounts[:email] = email
# end
#
# p accounts
#
# p accounts_array << @accounts
#
# accounts.each do |record|
#   accounts_array << { "first_name:" => record[0], "last_name" => record[1], "email" => record[2] }
# end
#
# p accounts_array

# Something I found online

#
# testArray = Array.new(5, 0)
# 0.upto(4) do |i|
# testArray[i] = Hash.new
# testArray[i][:value] = i
# end
#
# 0.upto(4) do |i|
# p testArray[i]
# end

# fourth attempt
#
# 2.times do
#   account1 = {}
#   puts "Please enter the first name:"
#   account1[:first_name] = gets.chomp
#   puts "Please enter the last name:"
#   account1[:last_name] = gets.chomp
#   puts "Please enter an email:"
#   account1[:email] = gets.chomp
# end
#
# puts account1

accounts = []

inner = []

inner = []
puts "Please enter the first name:"
inner.push(gets.chomp)
puts "Please enter the last name:"
inner.push(gets.chomp)
puts "Please enter email:"
inner.push(gets.chomp)


accounts.push(inner)

p accounts

inner = []

puts "Please enter the first name:"
inner.push(gets.chomp)
puts "Please enter the last name:"
inner.push(gets.chomp)
puts "Please enter email:"
inner.push(gets.chomp)

accounts.push(inner)

p accounts

inner = []

puts "Please enter the first name:"
inner.push(gets.chomp)
puts "Please enter the last name:"
inner.push(gets.chomp)
puts "Please enter email:"
inner.push(gets.chomp)

accounts.push(inner)

p accounts

inner = []

puts "Please enter the first name:"
inner.push(gets.chomp)
puts "Please enter the last name:"
inner.push(gets.chomp)
puts "Please enter email:"
inner.push(gets.chomp)

accounts.push(inner)

p accounts

inner = []

puts "Please enter the first name:"
inner.push(gets.chomp)
puts "Please enter the last name:"
inner.push(gets.chomp)
puts "Please enter email:"
inner.push(gets.chomp)

accounts.push(inner)

p accounts

puts Hash[accounts.sort.chunk{|value| value[0][0]}.to_a]
