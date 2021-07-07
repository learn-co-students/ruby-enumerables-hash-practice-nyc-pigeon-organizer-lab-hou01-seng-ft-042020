require 'pry'
def nyc_pigeon_organizer(data)
  new_hash={}
data.each_pair do |attribute,attribute_value|
    attribute_value.each_pair do |next_key,next_value|
      next_value.each do |name| 
        if !new_hash[name]
          new_hash[name]={}
        end 
        if !new_hash[name][attribute]
          new_hash[name][attribute]=[]
        end 
        new_hash[name][attribute] << "#{next_key}" 
      end 
    end 
  end 
  new_hash
end 

