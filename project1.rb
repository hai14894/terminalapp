puts "Hi, what's your name?"
    name = gets.chomp
puts " Hi #{name}, so how much do you earn per month?"
    wages_monthly = gets.chomp.to_i
puts "Great, so how much is your monthly rent? "
    rent_monthly = gets.chomp.to_i
puts "Now, how much do you spend on grocery?"
    grocery_monthly = gets.chomp.to_i
puts "How much do you spend on traveling? "
    travel_monthly = gets.chomp.to_i
puts "How much do you spend on your bills? "
    bills_monthly =gets.chomp.to_i
puts "How much do you spend on your personal things? "
    personal_monthly = gets.chomp.to_i
puts "One last thing, how much is on your saving account at the moment?"
    savings = gets.chomp.to_i

monthly_expenses = rent_monthly + grocery_monthly + travel_monthly + bills_monthly + personal_monthly
safety_net = monthly_expenses*6
# # So my personal financial safety net is 6 months of expenes
invest_money = savings.to_i - safety_net.to_i

if savings > safety_net 
     puts "That's great job #{name}, you can now invest #{invest_money}$, keep up the good work!!! "
elsif savings < safety_net 
    months_of_work_needed = ((safety_net - savings)/(wages_monthly - monthly_expenses)).round() + 1
    puts "you need to save for another #{months_of_work_needed} month(s) to be able to invest your money"
end
    

