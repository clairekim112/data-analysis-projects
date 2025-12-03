my_string = "LaunchCode"


# a) Use string methods to remove the first three characters from the string and add them to the end.
new_string= my_string[3:]+my_string[:3]
print (new_string)


# Use a template literal to print the original and modified string in a descriptive phrase.
print("If you move around the letters in phrase", my_string, "it becomes", new_string)
print("It is ok to {0}, {1}".format("hellow", 2))


# b) Modify your code to accept user input. Query the user to enter the number of letters that will be relocated.

relocate_number=int(input("What is the number of characters to be relocated?"))

if relocate_number>len(my_string):
    relocate_number=3

anew_string=my_string[relocate_number:]+my_string[:relocate_number]
print(anew_string)

# c) Add validation to your code to deal with user inputs that are longer than the word. In such cases, default to moving 3 characters. Also, the template literal should note the error.
