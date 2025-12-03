food = "water bottles,meal packs,snacks,chocolate"
equipment = "space suits,jet packs,tool belts,thermal detonators"
pets = "parrots,cats,moose,alien eggs"
sleep_aids = "blankets,pillows,eyepatches,alarm clocks"

# a) Use split to convert the strings into four cabinet lists. Alphabetize the contents of each cabinet.
foods=food.split(',')
foods.sort()
equipments=equipment.split(',')
equipments.sort()
petss=pets.split(',')
petss.sort()
sleep_adiss=sleep_aids.split(',')
sleep_adiss.sort()


# b) Initialize a cargo_hold list and add the cabinet lists to it. Print cargo_hold to verify its structure.
cargo_hold=[]
cargo_hold.append(foods)
cargo_hold.append(equipments)
cargo_hold.append(petss)
cargo_hold.append(sleep_adiss)

print(cargo_hold)


# c) Query the user to select a cabinet (0 - 3) in the cargo_hold.
user_select=int(input("Please select cabinet number:"))
while user_select>3:
    user_select=int(input("Please select again:"))


# d) Use bracket notation and format to display the contents of the selected cabinet. If the user entered an invalid number, print an error message.
print("The cabinet you have selected contains",cargo_hold[user_select])


# e) Modify the code to query the user for BOTH a cabinet in cargo_hold AND a particular item. Use the in method to check if the cabinet contains the selected item, then print “Cabinet ____ DOES/DOES NOT contain ____.”
user_item=input("What item are you looking for?")

if user_item in cargo_hold[user_select]:
    print("Cabinet {0} does contain {1}".format(user_select, user_item))
else:
    print("Cabinet {0} does NOT contain {1}".format(user_select, user_item))