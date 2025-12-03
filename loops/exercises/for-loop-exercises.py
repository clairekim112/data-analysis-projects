# Exercise #1: Construct for loops that accomplish the following tasks:
    # a. Print the numbers 0 - 20, one number per line.
    # b. Print only the ODD values from 3 - 29, one number per line.
    # c. Print the EVEN numbers 12 to -14 in descending order, one number per line.
    # d. Challenge - Print the numbers 50 - 20 in descending order, but only if the numbers are multiples of 3. (Your code should work even if you replace 50 or 20 with other numbers).

for num in range(20):
    print(num)

for num in range(3,30,2):
    print(num)

for num in range(12,-14,-2):
    print(num)

for num in range(10,-20,-1):
    if num%3==0:
        print(num)

num_astro_aboard=input("How may astraunts on board?")

while int(num_astro_aboard)>8:
   num_astro_aboard=input("Please revise num of astronaunts")