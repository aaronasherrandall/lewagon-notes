musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

# CRUD

# Create
# push operator <<
musicians << "Stevie Wonder"
p musicians
# ["David Gilmour", "Roger Waters", "Richard Wright", "Nick Mason", "Stevie Wonder"]

# Read
# Accessing one of the elements
p musicians[1]
# "Roger Waters"

# Update
# Reassigning one of the elements of the array
p musicians[4] = 'Stevie Nicks'
# "Stevie Nicks"

# Delete (bad way)
musicians.delete('Stevie Nicks')
p musicians
# this works, but not recommended
# if we have more than one 'Stevie Nicks' in the array, we will delete all of them

# Delete (good way)
# better target specific element we want to delete
musicians.delete_at(-1)
p musicians
