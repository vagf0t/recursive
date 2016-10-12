module Recursive
  class ArrayFlattener
    
    def flatten(to_be_flattened = [])
      return [] unless to_be_flattened.kind_of? Array
      
      to_be_flattened.each do |element|
        if element.kind_of? Array
          flattened_element = flatten element
          to_be_flattened.delete element
          flattened_element.each do |f|
            to_be_flattened << f
          end  
        end  
      end

    end
    
  end
end