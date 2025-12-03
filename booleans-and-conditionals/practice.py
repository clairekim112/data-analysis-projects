#Prompts the user to enter a whole number. If the number is odd, print nothing. If the number is even, print “EVEN!” If the number is also positive, print “POSITIVE”.
'''
ask_number=input("Please provide a whole number.")

if int(ask_number)%2==0:
  print("EVEN!")
  if int(ask_number)>0:
    print("POSITIVE")
else:
  ask_number=input("You did not provide a whole number. Please provide a whole number.")
  '''
num = 8


if num % 2 == 0:
   print("Launch")
elif num > 5:
   print("Code")
else:
   print("LaunchCode")