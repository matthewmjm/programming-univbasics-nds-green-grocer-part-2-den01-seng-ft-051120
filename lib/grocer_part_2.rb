require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
  # definitions
  apply_coup_array = []
  item_cart = []
  with_coup = {}
  #item_cart = cart
  item_cart = consolidate_cart(cart)
  i = 0
  inx = 0
  inx3 = 0
  
  #check for no coupons
  if coupons == []
    item_cart.each do |element|
      apply_coup_array << item_cart[i]
      i += 1
    end
    return apply_coup_array
  else
  end 
  
  #outer loop (goes through the coupons)
  coupons.each do |coup_item|
      #inner-loop (goes through the cart)
      inx2 = 0
      while inx2 < item_cart.length
        if coupons[inx][:item] == item_cart[inx2][:item]
          #calculations
          item_cart[inx2][:count]= item_cart[inx2][:count] - coupons[inx][:num]
          item_cart[inx2][:count]= item_cart[inx2][:count]
          #push to array
          apply_coup_array = apply_coup_array.push(item_cart[inx2])
          #calculations - item with coupon
          updated_price = coupons[inx][:cost]/coupons[inx][:num]
          updated_count = 
          with_coup = {
            :item => coupons[inx][:item].concat(" W/COUPON"),
            :price => updated_price.round(2),
            :clearance => item_cart[inx2][:clearance],
            :count => coupons[inx][:num]
          }
          #push to array - item with coupon
          apply_coup_array << with_coup
        else
        end
       inx2 += 1     
      end
    inx += 1
  end

  #add non-coupon items to apply_coup_array
  while inx3 < item_cart.length
    inx4 = 0
    while inx4 < apply_coup_array.length
      if item_cart[inx3][:item] != apply_coup_array[inx4][:item]
        apply_coup_array << item_cart[inx3]
      else
      end
      inx4 +=1
    end
    inx3 += 1
  end
  apply_coup_array =apply_coup_array.uniq

return apply_coup_array
end



def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
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
