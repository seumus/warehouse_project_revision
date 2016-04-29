require( 'pry-byebug')

WAREHOUSE = [
   {a10: 'rubber band'},
   {a9: 'glow stick'},
   {a8: 'model car'},
   {a7: 'bookmark'},
   {a6: 'shovel'},
   {a5: 'rubber duck'},
   {a4: 'hanger'},
   {a3: 'blouse'},
   {a2: 'stop sign'},
   {a1: 'needle'},
   {c1: 'rusty nail'},
   {c2: 'drill press'},
   {c3: 'chalk'},
   {c4: 'word search'},
   {c5: 'thermometer'},
   {c6: 'face wash'},
   {c7: 'paint brush'},
   {c8: 'candy wrapper'},
   {c9: 'shoe lace'},
   {c10: 'leg warmers'},
   {b1: 'tyre swing'},
   {b2: 'sharpie'},
   {b3: 'picture frame'},
   {b4: 'photo album'},
   {b5: 'nail filer'},
   {b6: 'tooth paste'},
   {b7: 'bath fizzers'},
   {b8: 'tissue box'},
   {b9: 'deodorant'},
   {b10: 'cookie jar'}
]

# WAREHOUSE = {a:['needle','stop sign','blouse','hanger','rubber duck','shovel','bookmark','model car','glow stick','rubber band'],
# c:['rusty nail', 'drill press', 'chalk','word search','thermometer','face wash','paint brush','candy wrapper','shoe lace','leg warmers'],
# b:['tyre swing','sharpie','picture frame','photo album','nail filer','tooth paste','bath fizzers','tissue box','deodorant','cookie jar']
# }
#
# def item_at_bay(item)
#   z = item.split(//, 2)
#   x = z[0]
#   y = z[1]
#   i = WAREHOUSE[x.to_sym][y.to_i - 1]
#   return i
#
#   # WAREHOUSE[item.to_sym()]
# end
#
# def bay_at_item(item)
#   for bay in WAREHOUSE
#     binding.pry
#     if WAREHOUSE[bay][item] == item
#       x = WAREHOUSE[bay].index(item + 1)
#       y = WAREHOUSE[bay]
#       z = y.to_s + x.to_s
#       return z
#     end
#   end
# end

def item_at_bay(bay)
  for item in WAREHOUSE
      if item.key?(bay.to_sym)
      return item[bay.to_sym]
      end
  end
end

def find_index(bay)
  for b in WAREHOUSE
    if b.key?(bay.to_sym)
      return WAREHOUSE.index(b)
    end
  end
end

def find_index_at_value(item)
  for hash in WAREHOUSE
    if hash.has_value?(item)
      return WAREHOUSE.index(hash)
    end
  end
end

# def find_key_at_index(index)
#   for i in WAREHOUSE
#     if i
#     end
#   end
# end

# def convert_index_to_key(index)
#   for num in
# end

def bay_at_item(item)
  for hash in WAREHOUSE
    if hash.has_value?(item)
      return hash.key(item).to_s
    end
  end
end

def items_in_bays(bays)
  array = []
  for bay in bays
    array = array << item_at_bay(bay.to_sym)
  end
  return array
end

def bays_at_items(items)
  array = []
  for item in items
    array = array << bay_at_item(item)
  end
  return array
end


def distance_between_bays(bays)
  array = []
  for bay in bays
    array << find_index(bay)
  end
  min_max = array.minmax
  return min_max[1] - min_max[0]
end

def collection_order(items)
  array = []
  final_array = []
  for item in items
    array << find_index_at_value(item)
  end
  sorted_array = array.sort
  end_array = []
  for num in sorted_array
    key = WAREHOUSE[num].keys
    end_array << key
  end
  end_array = end_array.flatten
  for keys in end_array
    keysz = keys.to_s
    final_array << keysz
  end
  return final_array
end
