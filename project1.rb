require 'lolcat'
require 'figlet'
def draw()
  system "clear"
  system "figlet FORTUNE PIGGY | lolcat"

end
draw()

answer = "yes"
while answer == "yes"


puts "Hi, what's your name?"
    name = gets.chomp.capitalize
require "tty-prompt"

prompt = TTY::Prompt.new
wages_monthly = prompt.ask('So how much is your monthly net income?') do |a|
    a.validate /^\d+$/ 
    a.messages[:valid?] = "Please enter a valid number"
  end

  rent_monthly = prompt.ask('How much is your monthly rent?') do |b|
    b.validate /^\d+$/ 
    b.messages[:valid?] = "Please enter a valid number"
  end

  grocery_monthly = prompt.ask('How much do you spend on grocecy monthly?') do |c|
    c.validate /^\d+$/ 
    c.messages[:valid?] = "Please enter a valid number"
  end
  
  transport_monthly = prompt.ask('How much do you spend on your transport monthly?') do |d|
    d.validate /^\d+$/ 
    d.messages[:valid?] = "Please enter a valid number"
  end

  bills_monthly = prompt.ask('How much are your bills monthly?') do |e|
    e.validate /^\d+$/ 
    e.messages[:valid?] = "Please enter a valid number"
  end

  personal_monthly = prompt.ask('How much is your personal spending each month?') do |f|
    f.validate /^\d+$/ 
    f.messages[:valid?] = "Please enter a valid number"
  end

  savings = prompt.ask('How much do you have on your savings at the moment?') do |g|
    g.validate /^\d+$/ 
    g.messages[:valid?] = "Please enter a valid number"
  end

savings = savings.to_i
wages_monthly = wages_monthly.to_i

monthly_expenses = (rent_monthly.to_i + grocery_monthly.to_i + transport_monthly.to_i + bills_monthly.to_i + personal_monthly.to_i)
safety_net = (monthly_expenses)*6

invest_money = savings - safety_net
if wages_monthly <=  monthly_expenses
  draw()
  puts "#{name} you might want to adjust your spending habits, maybe move to a cheaper place, lessen your spending in order to achive your saving goals "
break 
end


if savings > safety_net
   draw()
    puts "That's great job #{name}, you can now invest #{invest_money}$, keep up the good work!!! "

elsif savings < safety_net 
   months_of_work_needed = ((safety_net - savings)/(wages_monthly.to_i - monthly_expenses)).ceil
   draw()
   puts "#{name} you need to save for another #{months_of_work_needed} month(s) to be able to invest your money"

elsif savings == safety_net
  draw()
    puts "You can start investing your money now, save for a better future"
end

puts "Would you like to do caculation again? (type 'yes' if you do or enter any key to exit)"
answer = gets.chomp
end

