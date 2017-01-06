require 'pry'

def begins_with_r(array)
  start = array.length
  new_array = []
  array.each do |e|
    if e.start_with?("r" || "R")
      new_array.push(e)
    end
  end
  final = new_array.length
  if start == final
    return true
  else
    return false
  end
end

def contain_a(array)
  new_array = []
  array.each do |e|
    if e.include?("a")
      new_array << e
    end
  end
  return new_array
end

def first_wa(array)
  new_array = []
  array.each do |e|
    c = e.to_s
    if c.include?("wa")
      new_array << c
    end
  end
  return new_array[0]
end

def remove_non_strings(array)
  new_array = []
  array.each do |e|
    if e.instance_of? String
      new_array << e
    end
  end
  return new_array
end

def count_elements(array)
  new_array = []
  new_array2 = []
  new_hash = {}
  new_hash2 = {}
  counted = Hash.new(0)
  array.each { |h| counted[h[:name]] += 1 }
  counted.each do |pair|
    new_array.push(pair) #":name " + pair[0]
  end
  new_hash[:name] = new_array[0][0]
  new_hash[:count] = new_array[0][1]
  new_hash2[:name] = new_array[1][0]
  new_hash2[:count] = new_array[1][1]
  new_array2 << new_hash
  new_array2 << new_hash2
  return new_array2
end

def merge_data(keys, data)
  new_array = []
  merged = keys[0].merge(data[0]["blake"])
  merged2 = keys[1].merge(data[0]["ashley"])
  new_array << merged
  new_array << merged2
  return new_array
end

def find_cool(array)
  new_array = []
  array.each do |hash|
    hash.each do |k, v|
      if v == "cool"
        new_array << hash
      end
    end
  end
  return new_array
end

def organize_schools(schools)
  hash = {
    "NYC" => [],
    "SF" => [],
    "Chicago" => []
  }
  schools.each do |school, v|
    v.each do |k, location|
      if location == "NYC"
        hash["NYC"] << school
      elsif location == "SF"
          hash["SF"] << school
      elsif location == "Chicago"
          hash["Chicago"] << school
      end
    end
  end
  return hash 
end
