require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
  # definitions
  apply_coup_array = []
  item_cart = []
  item_cart = consolidate_cart(cart)
  inx = 0
  
  #outer loop (goes through the coupons)
  coupons.each do |coup_item|
    coup_item.each do |coup_key, coup_val|
      
      #inner-loop (goes through the cart)
      inx2 = 0
      while inx2 < item_cart.length
            
      end
      inx2 += 1
    end
    
    inx += 1
  end 
  
binding.pry
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
