require "pry"
def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |category, attribute|
    attribute.each do |attribute_value, array|
      array.each do |name|
        pigeon_list[name] ||= {}
        pigeon_list[name][category] ||= []
        pigeon_list[name][category].push(attribute_value.to_s)
      end
    end
  end
  pigeon_list
end
