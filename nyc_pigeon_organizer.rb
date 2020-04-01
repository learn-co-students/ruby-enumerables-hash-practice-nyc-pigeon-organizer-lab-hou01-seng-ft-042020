def nyc_pigeon_organizer(data)
# write your code here!

  new_hash = {}
 
  data.collect do |key, value|
    
    value.collect do |new_key, new_value|

      new_value.collect do |element|
        
        if !new_hash[element]
          new_hash[element] = {}
        end

        if !new_hash[element][key]
          new_hash[element][key] = []
          
        end
        new_hash[element][key] << new_key.to_s

    # "Theo" => {:color => []}
    # << new_key.to_s
    # binding.pry
    
      end

    end
    
  end
  new_hash
end
