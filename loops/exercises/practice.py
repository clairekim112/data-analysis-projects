num_choice = 0

while num_choice <= 0:
   num_choice = int(input('Choose a positive number: '))
   if num_choice <= 0:
      print('Invalid number')