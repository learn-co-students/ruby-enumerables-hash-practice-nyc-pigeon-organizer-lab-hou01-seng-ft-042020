def get_unique_names(data)
  names = []
  data[:gender].reduce([]) do |memo, (key, value)| 
    value.map do |name| 
      names << name unless names.include?(name)
    end
  end 
  names
end

def get_attr(name, attribute_data)
  attributes = []
  attribute_data.reduce([]) do |memo, (key, value)| 
    attributes << key.to_s if value.include?(name)
  end 
  attributes
end 

def nyc_pigeon_organizer(data)
  # get a list of unique names 
  # for each name create a hash with approp data
  names = get_unique_names(data)
  new_hash = {}
  names.map do |name| 
    new_hash[name] = {
      :color => get_attr(name, data[:color]),
      :gender => get_attr(name, data[:gender]),
      :lives => get_attr(name, data[:lives])
    }
  end 
  p new_hash
end
