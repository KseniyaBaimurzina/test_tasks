def max_multiplication(input_str)
    return nil unless input_str.is_a?(String)
  
    max_result = nil
  
    for i in 0..(input_str.length - 4)
        substring = input_str[i, 4]
      
        if substring.match?(/\d{4}/)
            result = substring.chars.map(&:to_i).reduce(:*)
        
            max_result = result if max_result.nil? || result > max_result
        end
    end
  
    return max_result
end

