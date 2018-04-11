# Print the string “Hello, world.”
puts 'Hello World!'

# For the string “Hello, Ruby,” find the index of the word “Ruby.”
str = 'Hello, Ruby'
indx = str.rindex('Ruby')
puts "index of \"Ruby\" in \"Hello, Ruby\" is #{indx}"

# Print your name ten times.
10.times do puts 'Scott McAllister' end

# Print “This is sentence number 1,” where the number changes from 1 to 10.
for sentence_number in 1..10 do
    puts "This is sentence number #{sentence_number}"
end

# Write a program that picks a random number and asks user to guess
puts "\n\nGuess a number from 1 to 10"
answer = rand(10) + 1
guess = gets.to_i
while guess != answer do
    too_high = guess > answer
    if too_high then puts "Lower..." else puts "Higher..." end
    guess = gets.to_i
end
puts "You guessed it!"