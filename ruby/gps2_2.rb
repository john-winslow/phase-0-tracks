# Method to create a list

def create_list(input)
  grocery_list = {}
  temp_array = input.split(' ')
  p temp_array
  i = 0
  while i < temp_array.length
    temp_array[i]#.to_sym  Updated!
    grocery_list[temp_array[i]] = 1 # grocery_list[:cheese] = 0
    i += 1
  end
  grocery_list
end 

def add_item(name, quantity)  # Updated!
  grocery_list = {}
  #name = name.to_sym
  quantity = quantity.to_i
  grocery_list[name] = quantity
  grocery_list
end

def remove_item(grocery_list, deleted_item) # UPDATED
  grocery_list.delete(deleted_item)
end


def update_quantity(grocery_list, u_item, u_quantity)
  #u_item.to_sym
  grocery_list[u_item] = u_quantity
end 

def print_list(list_to_print) 
  puts "Here is your your list:"
  list_to_print.each {|i,v| puts "#{i.capitalize}: #{v};"}
end

# DRIVER CODE:

puts "What items do you want to add to the list?" 
input = gets.chomp

# Release 2, testing solutions

grocery_list = create_list(input)

print_list(grocery_list)

puts "Would you like to add any other items? (y/n)"
if gets.chomp.downcase == "y"
  puts "What would you like to add?"
  grocery_list.update(add_item(gets.chomp, 1))
  print_list(grocery_list)
end

puts "Would you like to remove any items? (y/n)"
if gets.chomp == "y"
  puts "Which item would you like to remove?"
  remove_item(grocery_list,gets.chomp)
  print_list(grocery_list)
end

puts "Would you like to change any quantities? (y/n)"
if gets.chomp.downcase == "y"
  puts "Which item?"
  response = gets.chomp
  puts "How many would you like?"
  new_quant = gets.chomp.to_i
  update_quantity(grocery_list, response, new_quant)
end
  

print_list(grocery_list) # Printing the list