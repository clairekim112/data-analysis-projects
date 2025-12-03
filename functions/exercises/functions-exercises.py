# Create nifty diamond
# Part 1 A -- Make a Line
def make_line(size):
    return size*'#'


# Part 1 B -- Make a Square
# create a function using your make_line function to code a square

def make_square(size):
    square=''
    for i in range(size):
        square=square+make_line(size)
        if i<size-1:
            square+='\n'
    return square


def make_square_v2(size):
    return make_rectangle(size,size)

# Part 1 C -- Make a Rectangle

def make_rectangle(width, height):
    rectangle=''
    for i in range(height):
        rectangle+=make_line(width)
        if i<height-1:
            rectangle+='\n'
    return rectangle


# Part 2 A -- Make a Stairs

def make_downward_stairs(height):
    downward_stairs=''
    for line_count in range(1,height+1):
        downward_stairs+=make_line(line_count)
        if line_count<height:
            downward_stairs+='\n'
    return downward_stairs




# Part 2 B -- Make Space-Line 

def make_space_line(numSpaces, numChars):
    space_line=' '*numSpaces+'#'*numChars+' '*numSpaces
    return space_line


# Part 2 C -- Make Isosceles Triangle

def make_isosceles_triangle(height):
    downward_stairs=''
    for line_count in range(height):
        downward_stairs+=make_space_line(height-line_count-1,2*line_count+1)
        if line_count<height:
            downward_stairs+='\n'
    return downward_stairs

print(make_isosceles_triangle(5))


# Part 3 -- Make a Diamond
def make_opps_isosceles_triange(height):
    downward_stairs=''
    for line_count in range(height-1,-1,-1):
        downward_stairs+=make_space_line(height-line_count-1,2*line_count+1)
        if line_count<height:
            downward_stairs+='\n'
    return downward_stairs

print(make_opps_isosceles_triange(5))

def make_diamond(height):
    diamond=make_isosceles_triangle(height)+make_opps_isosceles_triange(height)
    return diamond

print(make_diamond(8))





