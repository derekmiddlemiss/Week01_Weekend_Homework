def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop,amount)
  pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop,number)
  pet_shop[:admin][:pets_sold] += number
end

def stock_count(pet_shop)
  return pet_shop[:pets].length()
end

def pets_by_breed(pet_shop,breed_to_find)
  pets_found = []
  for pet in pet_shop[:pets] do
    pets_found.push(pet) if pet[:breed] == breed_to_find
    # or could use pets_found += [pet] here, but seems a
    # bit clumsy
  end
  return pets_found
end

def find_pet_by_name(pet_shop,name_to_find)
  for pet in pet_shop[:pets] do
    return pet if pet[:name] == name_to_find
  end
  return nil
end

def remove_pet_by_name(pet_shop,name_to_remove)
  pet_shop[:pets].delete_if { |pet| pet[:name] == name_to_remove }
end







