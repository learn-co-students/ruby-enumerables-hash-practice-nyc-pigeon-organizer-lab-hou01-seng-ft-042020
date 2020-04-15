require "pry"

def nyc_pigeon_organizer(data)
  new_data_set = {}
  data.each do |key, value|
    value.each do |new_value, names|
      names.each do |name|

        if !new_data_set[name]
          new_data_set[name] = {}
        end

        if !new_data_set[name][key]
          new_data_set[name][key] =[]
        end

        new_data_set[name][key] << new_value.to_s
      end
    end
  end
  return new_data_set
end
