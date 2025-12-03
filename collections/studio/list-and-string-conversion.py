proto_list1 = "3,6,9,12"
proto_list2 = "A;C;M;E"
proto_list3 = "space delimited string"
proto_list4 = "Comma-spaces, might, require, typing, caution"

strings = [proto_list1, proto_list2, proto_list3, proto_list4]

# a) Use the 'in' method to check to see if the words in each string are separated by commas (,), semicolons (;) or just spaces.
print(',' in proto_list1)

# b) If the string uses commas to separate the words, split it into an array, reverse the entries, and then join the array into a new comma separated string.
place_a=proto_list1

if ',' in place_a:
    place_b=place_a.split(',')
    place_b.reverse()
    print(place_b)
    place_c=','.join(place_b)
    print(place_c)

place_1=proto_list2
# c) If the string uses semicolons to separate the words, split it into an array, alphabetize the entries, and then join the array into a new comma separated string.
if ';' in place_1:
    place_2=place_1.split(';')
    place_2.sort()
    print(place_2)
    place_3=','.join(place_2)
    print(place_3)

place_10=proto_list3
# d) If the string uses spaces to separate the words, split it into an array, reverse alphabetize the entries, and then join the array into a new space separated string.
if ' ' in place_10:
    place_20=place_10.split(' ')
    place_20.sort()
    place_20.reverse()
    print(place_20)
    place_30=','.join(place_20)
    print(place_30)

print('----')
place_100=proto_list4
# e) If the string uses ‘comma spaces’ to separate the list, modify your code to produce the same result as part “b”, making sure that the extra spaces are NOT part of the final string.
if ', ' in place_100:
    place_200=place_100.split(', ')
    place_200.reverse()
    print(place_200)
    place_300=','.join(place_200)
    print(place_300)x
