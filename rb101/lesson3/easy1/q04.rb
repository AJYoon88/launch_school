numbers = [1, 2, 3, 4, 5]

p numbers.delete_at(1)

# p numbers.delete(1)

p numbers

# Array#delete_at takes an index number as argument. Delete an object at that index number, and returns the deleted object. It mutates the caller. 

# Array#delete takes an object as its argument. It deletes all items in the array that are qeual to the arument. Returns the LAST deletec item. Also, mutates the caller. 
