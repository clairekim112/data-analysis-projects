# ---- Exercise 2: Bracket Notation Basics ----

text = 'Strings_are_sequences_of_characters.'
word = 'tomato'

# 1. Print a slice of the first 12 characters from 'text'.
print(text[0:13])

# 2. Print a slice of the last 12 characters from 'text'. You should NOT have to count the index values yourself!
print(text[-12:-1])

# 3. Print a slice of the middle 12 characters from 'text'.
print(text[13:25])

# ---- Exercise 3: Looping Through a String ----

# Use index values to loop backwards through 'word'.
example='Word'
new_example=''
og=''
reverse=''

# 1. Print 1 letter per line.
for letter in example:
    print(letter)

# 2. Refactor the code to use the accumulator pattern to build up and print the reversed string. For example, if given 'good', print 'doog' on one line.
for letter in example:
    new_example=letter+new_example

print(new_example)

# 3. Refactor the code to print a combination of the original and reversed string. For example, given 'tomato', print 'tomatootamot'. (If you want to be fancy, print 'tomato | otamot').

#0,1,2,3,-1,-2,-3,-4
#0,1,2,3,4,5,6,7

for letter in example:
    og+=letter
    reverse=letter+reverse

print(og,'|', reverse)