# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value


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
