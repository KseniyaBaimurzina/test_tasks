def sort_by_ones(arr)
    arr.sort do |a, b|
        ones_in_a = a.to_s(2).count('1')
        ones_in_b = b.to_s(2).count('1')
        
        if ones_in_a == ones_in_b
            a <=> b
        else
            ones_in_a <=> ones_in_b
        end
    end
end