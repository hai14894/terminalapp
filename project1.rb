answer = "yes"
while answer == "yes"


puts "Hi, what's your name?"
    name = gets.chomp.capitalize
require "tty-prompt"

prompt = TTY::Prompt.new
wages_monthly = prompt.ask(' So how much is your monthly net income?') do |a|
    a.in '0-1000000'
    a.messages[:range?] = "Please enter a valid number"
  end

  rent_monthly = prompt.ask(' So how much is your monthly rent?') do |b|
    b.in '0-1000000'
    b.messages[:range?] = "Please enter a valid number"
  end

  grocery_monthly = prompt.ask(' So how much do you spend on grocecy monthly?') do |c|
    c.in '0-1000000'
    c.messages[:range?] = "Please enter a valid number"
  end
  
  transport_monthly = prompt.ask(' So how much do you spend on your transport monthly?') do |d|
    d.in '0-1000000'
    d.messages[:range?] = "Please enter a valid number"
  end

  bills_monthly = prompt.ask(' So how much are your bills monthly?') do |e|
    e.in '0-1000000'
    e.messages[:range?] = "Please enter a valid number"
  end

  personal_monthly = prompt.ask(' So how much is your personal spending each month?') do |f|
    f.in '0-1000000'
    f.messages[:range?] = "Please enter a valid number"
  end

  savings = prompt.ask(' So how much do you have on your savings at the moment?') do |g|
    g.in '0-1000000'
    g.messages[:range?] = "Please enter a valid number"
  end
savings = savings.to_i
wages_monthly = wages_monthly.to_i
monthly_expenses = (rent_monthly.to_i + grocery_monthly.to_i + transport_monthly.to_i + bills_monthly.to_i + personal_monthly.to_i)
safety_net = (monthly_expenses)*6

invest_money = savings - safety_net
if wages_monthly <=  monthly_expenses
  puts "#{name} you might want to adjust your spending habits, maybe move to a cheaper place, lessen your spending in order to achive your saving goals "
break 
end


if savings > safety_net 
    puts "That's great job #{name}, you can now invest #{invest_money}$, keep up the good work!!! "

elsif savings < safety_net 
   months_of_work_needed = ((safety_net - savings)/(wages_monthly.to_i - monthly_expenses)).round() + 1
   puts "#{name} need to save for another #{months_of_work_needed} month(s) to be able to invest your money"

elsif savings == safety_net
    puts "You can start investing your money now, save for a better future"
end

puts "Would you like to try again #{name}? (type 'yes' if you do or enter any key if you want to exit)"
answer = gets.chomp
end
