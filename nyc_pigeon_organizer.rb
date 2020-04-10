

def nyc_pigeon_organizer(data)
  # write your code here!
  new_pigeon = {}
 
  data.each do |attribute_type, attribute|
    attribute.each do |attribute_value, pigeon_name|
      pigeon_name.each do |name|
        new_pigeon[name] ||= {}
        new_pigeon[name][attribute_type] ||= []
        new_pigeon[name][attribute_type].push(attribute_value.to_s)
      end
    end
  end
new_pigeon
end
