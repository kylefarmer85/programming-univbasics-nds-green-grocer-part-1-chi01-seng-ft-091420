require 'pry'
def find_item_by_name_in_collection(name, collection)
  result = {}
  collection.each do |i|
    i.each do |k,v|
      if name == i[k]
        result = i
      end
    end
  end
  if result == {}
    return nil
  end
  result
end
 
# def find_item_by_name_in_collection(name, collection)
#   counter = 0 
#   while counter < collection.length 
#     if collection[counter][:item] == name
#       return collection[counter]
#     end
#     counter += 1
#   end
#   nil
# end
    
    
def consolidate_cart(cart)
  new_cart = []
  counter = 0
  while counter < cart.length
    new_cart_item = find_item_by_name_in_collection(cart[counter][:item], new_cart)
    if new_cart_item
      new_cart_item[:count] += 1
    else
      new_cart.push(cart[counter].merge({:count => 1}))
    end
    counter += 1
  end
  new_cart
end

    
# def consolidate_cart(cart)
#   new_cart = []
#   counter = 0 
#   while counter < cart.length
#     new_cart_item = find_item_by_name_in_collection(cart[counter][:item], new_cart)
#     if new_cart_item
#       new_cart_item[:count] += 1
#     else
#       new_cart_item = {
#         :item => cart[counter][:item],
#         :price => cart[counter][:price],
#         :clearance => cart[counter][:clearance],
#         :count => 1
#       }
#       new_cart.push(new_cart_item)  
#     end
#     counter += 1
#   end
#   new_cart
# end
  
  
  
  
  

