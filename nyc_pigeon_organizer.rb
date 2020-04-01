def nyc_pigeon_organizer(data)
# write your code here!

  new_hash = {}
 
  data.collect do |color_key, color_value|
    
    color_value.collect do |name_key, name_value|

      name_value.collect do |element|
        
        if !new_hash[element]
          new_hash[element] = {}
        end

        if !new_hash[element][color_key]
          new_hash[element][color_key] = []
          
        end
        new_hash[element][color_key] << name_key.to_s

    # "Theo" => {:color => []}
    # << name_key.to_s
    # binding.pry
    
      end

    end
    
  end
  new_hash
end
