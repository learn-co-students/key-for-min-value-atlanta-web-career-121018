def key_for_min_value(hash)
  key = nil
  value = nil
  hash.each do |k, v|
     key = k if key == nil
     value = v if value == nil
     if v < value
     	value = v
     	key = k
     end
   end
   key
end
