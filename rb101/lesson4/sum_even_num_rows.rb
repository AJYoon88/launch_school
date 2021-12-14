=begin

Imagine a sequence of consecutive even integers beginning with 2.
The integers are grouped in rows, with the first row containing one integer, the second row two integers, the
third row three integers, and so on. Given an ingeger representing the number of a particular row,
return an integer representing the sum of all the integers in that row. 

## Problem
- sequence of even integers, which begins with 2. 
- integers are grouped in tows. 
- first row contains one int, the second two, the third three, and so forth..
- input: an integer representing the number of particular row. 
- output: an integer (sum of all the integers in the input row number)

- task:
  1. find the sequence of even integers in the input row number. 
  2. sum all the numbers in that row. 
  
## Examples

sum_even_num_rows(1) == 2
sum_even_num_rows(2) == 6
sum_even_num_rows(4) == 68


## Data Structure

[
  [2],
  [4,6].
  [8,10,12]
  [14,16,18,20]
  ...
]


array to store rows of even integer sequences.


## Algorithm
0. set a sequence start integer of 2 (from the explicit reqruiement)
1. create a new array to store each row of even num sequences.
2. create the input number of arrays of even num sequences. Store them to the new array created above.
  2a. Take a beginning integer of the sequence and the row number, which represents the number of integers should be in the particular row. 
    - how to find the beginning integer of the each sequence?
      - add 2 on the last integer of the previous sequence. 
  2b. create a new array. 
  2c. From the beginning integer, increment by 2 until you reach the number of integers that match the row number. Store each integer to the new array created above. 
  2d. return the result array.  
3. sum all numbers in the last sequence. 

=end

def sequence(start_int, row_num)
  sequence = []
  seq_num = start_int
  
  row_num.times do
    sequence << seq_num
    seq_num += 2
  end
  
  sequence
end


def sum_even_num_rows(row)
  arr = []
  start_int = 2
  
  row_count = 1
  while row_count <= row
    arr << sequence(start_int, row_count)
    start_int = arr[-1][-1] + 2
    row_count += 1
  end
  
  p arr
  arr[-1].sum
end


p sum_even_num_rows(1) == 2
p sum_even_num_rows(2) == 10
p sum_even_num_rows(4) == 68
p sum_even_num_rows(30)


=begin
# Final Thought
- Don't try to think every details at once. 
  - think high level, and tackle each logic as a separate algo. 
- If possible, initialize the explicit requirement as variable first. 
  - ie. output must be string => set output variable as empty string.
  - ie2. the sequence of even integers beginnin with 2. -> set the start_integer variable as 2.
