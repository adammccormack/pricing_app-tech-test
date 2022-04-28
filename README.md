
| Input                         | Process       | Output        |
| ---------------------------- | ----------------- | ----------------- |
| duration of booking in minutes   |  deduct minutes starting from weeks, then days, hours, and minutes and count each one, then sum the result  | cheapest rate of booking in British pounds currency |

Ruby versions: 3.0.1 / 3.0.2

***Instructions***

***Using GetPrice App***

1. Clone the repo on Github at: https://github.com/alldigits/k_app, Github cloning instructions: https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository.

2. Open your terminal and navigate to the k_app folder.

3. From the terminal enter the following: 
  - irb -r './lib/get_price'

4. Once irb is running type: 
  - get_price = GetPrice.new

5. Then to use the program type and enter the amount of minutes (as an integer) you would like to get the equivalent price for:
  - get_price.call(minutes)



**Running GetPrice tests**

1. Open your terminal and navigate to the k_app folder.

2. From the terminal enter the following: 
  - rspec
