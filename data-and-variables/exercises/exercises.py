# 1. Declare and assign the variables here:
space_shuttle_name="Determination"
shuttle_speed=17500
distance_to_mars=225000000
distance_to_moon=384400
miles_per_kilo=0.621
# 2. Use print() to print the 'type' each variable. Print one item per line.
print(type(space_shuttle_name))
print(type(shuttle_speed))
print(type(distance_to_mars))
print(type(distance_to_moon))
print(type(miles_per_kilo))
# Code your solution to exercises 3 and 4 here:
miles_to_mars=distance_to_mars*miles_per_kilo
hours_to_mars=miles_per_kilo/shuttle_speed
days_to_mars=hours_to_mars/24

print(space_shuttle_name, "will take", days_to_mars, "days to reach Mars.")
# Code your solution to exercise 5 here

miles_to_moon = distance_to_moon*miles_per_kilo
hours_to_moon = miles_to_moon / shuttle_speed
days_to_moon = hours_to_moon / 24
print(space_shuttle_name, " will take ", days_to_moon, " days to reach the Moon.")