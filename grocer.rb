def find_item_by_name_in_collection(name, collection)
 i = 0 
 
 while i < collection.length  do 
   return collection[i] if name === collection[i][:item]
 i += 1 
 end 
# Implement me first!
  #
  # Consult README for inputs and outputs


nil 
end





def consolidate_cart(cart)
 i = 0 
 result = []
 
 
 while i < cart.count do 
   item_name = cart[i][:item] 
   sought_item = find_item_by_name_in_collection(item_name, result)
   if sought_item 
     sought_item[:count] 
     += 1 
   else 
     cart[i][:count] = 1 
     result << cart[i]
   end 
   
   i += 1 
 end 
 # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  result 
end




def apply_coupons(cart, coupons)
  i = 0 
  while i < coupon.count do 
    coupon = coupons[i]
    item_with_coupon = find_item_by_name_in_collection(coupon[:item], cart)
    item_is_in_basket = !item_with_coupon 
    count_is_big_enough_to_apply = item_is_in_basket && item_with_coupon[:count] >=coupon[:num]
    
    
    if item_is_in_basket and count_is_big_enough_to_apply
      apply_coupon_to_cart(item_with_coupon, coupon, cart)
    end 
    i += 1 
  end 
    cart 
  end 
  
  
  
  
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart


def apply_clearance(cart)
   i = 0 
   while i < cart.lenght do 
     item = cart[i]
     if item[:clearance]
       discounted_price = ((1 - CLEARANCE_ITEM_DISCOUNT_RATE) * item[:price]).round(2) 
       item[:price] = discounted_price
     end 
     i += 1 
   end 
   
   cart 
 end 
 
  
  
  
  
  
  
  
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart



def checkout(cart, coupons)
total = 0
i = 0 

ccart = consolidate_cart(cart)
apply_coupons(ccart, coupons)
apply_clearance(ccart)


while i < ccart.length do 
  total += item_total_cost(ccart[i])
  i += 1 
end 


total >= 100 ? total * (1.0 - BIG_PURCHASE_DISCOUNT_RATE)  : total 
end 













  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
