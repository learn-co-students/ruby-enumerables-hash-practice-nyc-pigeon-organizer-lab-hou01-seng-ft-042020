require "pry"
def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |category, attribute|
    attribute.each do |attribute_value, array|
      array.each do |name|
        binding.pry
        if pigeon_list[name] == nil
          pigeon_list[name] = {}
        end
        if pigeon_list[name][category] == nil
          pigeon_list[name][category] = []
        end
          pigeon_list[name][category] << attribute_value.to_s
      end
    end
  end
  pigeon_list
end
