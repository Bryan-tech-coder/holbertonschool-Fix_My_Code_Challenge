###
# Sort integer arguments (ascending)
###

result = []

ARGV.each do |arg|
    next if arg !~ /^-?[0-9]+$/
    i_arg = arg.to_i

    inserted = false
    i = 0

    while i < result.size
        if result[i] >= i_arg
            result.insert(i, i_arg)
            inserted = true
            break
        end
        i += 1
    end

    result << i_arg unless inserted
end

puts result
