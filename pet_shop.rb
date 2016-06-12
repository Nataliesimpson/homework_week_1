def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(cash)
   return cash[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, number)
  pet_shop[:admin][:total_cash] += number
end 

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, number)
   return pet_shop[:admin][:pets_sold] += number
end  

def stock_count(pet_shop)
   return pet_shop[:pets].size
end

def pets_by_breed(pet_shop, breed)
  matched_pets = []
  for pet in pet_shop[:pets]
    matched_pets << pet if pet[:breed] == breed
  end
    return matched_pets
end  

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    return pet if pet[:name] == name
  end
    return nil
end

def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
  pet_shop[:pets].delete(pet) if pet[:name] == name
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  return pet_shop[:pets] << new_pet
end  

def customer_pet_count(customers)
  return customers[:pets].length
end  

def add_pet_to_customer(customer, new_pet)
  return customer[:pets] << new_pet
end  

#OPTIONAL
def customer_can_afford_pet(customer, new_pet)
  if new_pet[:price] >= @customers[1][:cash]
    return false
  else 
    return true
  end  
end  

  
























