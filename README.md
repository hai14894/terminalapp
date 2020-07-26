## SOFTWARE DEVELOPMENT PLAN (FORTUNE PIGGY)

### Purpose and scope of the application

#### SO what's the goal of this application

FORTUNE PIGGY application will suggest whether you should invest your money or not and how much, bases on your monthly income, your expenses and your current savings.

#### What problem will it solve and target audience

The application is going to tackle a problem lots of people are facing, if not one of the most important aspect of our life, our financial status.
Our early saving and investment is going to dictate whether we're going to have a safe and easy retirement or not. Making investment early means you're on your way to the ultimate financial goal : FINANCIAL FREEDOM, where you can fund and sustain yourself without working for the rest of your life, where you do something because that's what you like, not what you need to do. A lots of people having are having trouble saving money in early stage of their career, even later on. Living paycheck by paycheck, spending money you dont have, max out your credits card is not an uncommon lifestyle, especially among millennials. And this doesn't mean you have to cut off all your spending in able to do this, it means you have to be consious about your own finance and dont spend more than what you make.

#### How does it work?

So in FORTUNE PIGGY, you're going to put in your mothly income, your expenses and your current saving, it will calculate the money you need if you're not working for 6 months, in case you lose your job tommorow, that money is called a "safety net"
It will return whether you should invest now and if you shouldn't, how long you have to wait until you can. If you were ready to invest, it will tell you how much you should put in your investment. All of this is based on your own references.

## FEATURES 

#### App logo
It will create an app logo when you started running the program by using lolcat and figlet gem.
#### User Input
The app is going to ask user to in put their name and numbers for the calculation. If user enters something other and a number when the app asked it will return an error message and it will ask user to enter it again until user enter a valid number. This feature uses tty-prompt gem.
#### Rerun the application
when it finished the calculation it will ask you if you want to run the app again by typing yes or quit the app by enter any key.



#### Gem used : 

- lolcat - https://rubygems.org/gems/lolcat
- figlet- https://rubygems.org/gems/figlet
 -tty prompt- https://rubygems.org/gems/tty-prompt

#### Control flow 
![title](docs/controlflow.png)
#### Link to this repository : 
https://github.com/hai14894/terminalapp

### How to run the application.

First you need to make sure you have ruby installed, you can find the information [here](https://www.ruby-lang.org/en/documentation/installation/).

Clone the app from github </br>
```git clone git@github.com:hai14894/terminalapp.git```

Install the gems needed for the program to run.</br>
```gem install lolcat```</br>
```gem install figlet```</br>
```gem install tty-prompt```</br>

Run the application</br>
In the /src directory run:</br>

```ruby app.rb```






