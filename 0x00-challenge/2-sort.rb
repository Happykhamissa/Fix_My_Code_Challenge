###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
    # skip if not integer
    next unless arg =~ /^-?[0-9]+$/

    # convert to integer
    i_arg = arg.to_i
    
    # insert result at the right position
    index = result.index { |num| num >= i_arg } || result.size
    result.insert(index, i_arg)
end

puts result