# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

#### Without Nested Loop ####
# def key_for_min_value(arghash)
#   compval = Float::INFINITY
#   if arghash.empty? == true
#      return nil
#   end
#   arghash.collect do |name, val|
#     if val <= compval
#       compval = val
#     end
#   end
#   arghash.collect do |name, val|
#     if val == compval
#       return name
#     end
#   end
# end

def key_for_min_value(arghash)
  compval = Float::INFINITY
  if arghash.empty? == true
    return nil
  end
  arghash.collect do |name, val|
    arghash.collect do |name, val|
      if val <= compval
        compval = val
      end
    end
    if val == compval
      return name
    end
  end
end


# hash = {:blake => 500, :ashley => 2, :adam => 1}
# hash = {}
# key_for_min_value(hash)
# puts name_hash