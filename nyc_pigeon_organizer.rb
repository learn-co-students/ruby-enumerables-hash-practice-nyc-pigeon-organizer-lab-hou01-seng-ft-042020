require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  
  # array_of_names = []
  # pigeons = {}
  # data[:color].each do |color|
  #   color.each do |array|
  #     array_of_names << color
  #   end
  # end
  # array_of_names = array_of_names.uniq
  
  # data.each do |
  
  pigeons = {}
  data.each do |attributes , inner_hash|
    inner_hash.each do |inner_attributes,array_of_strings|
      array_of_strings.each do |name|
        
        if !(pigeons.has_key?(name))
          pigeons[name] = {}
        end
        if !(pigeons[name].has_key?(attributes))
          pigeons[name][attributes] = []
        end
        if !(pigeons[name][attributes].include?(inner_attributes))
          pigeons[name][attributes] << inner_attributes.to_s
        end
        
      end
    end
  end
  pigeons


  
end


