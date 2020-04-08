def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}

  data.each do |attribute_type, attributes|
    attributes.each do |attribute_value, pigeon_names|
      pigeon_names.each do |name|
        pigeon_list[name] ||= {}
        pigeon_list[name][attribute_type] ||= []
        pigeon_list[name][attribute_type].push(attribute_value.to_s)
      end
    end 
  end
 p pigeon_list
end
