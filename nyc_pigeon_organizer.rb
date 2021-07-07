
def nyc_pigeon_organizer(data)
 # write your code here!
 pigeon_list = {}

 data.each do |attribute, hash|
   hash.each do |feature, array|
     array.each do |name|
       if !pigeon_list[name]
         pigeon_list[name] = {}
       end
       if !pigeon_list[name][attribute]
         !pigeon_list[name][attribute] = []
       end
       if !pigeon_list[name][attribute].include?(feature)
         pigeon_list[name][attribute] << feature.to_s
       end
     end
   end
 end
 pigeon_list
end
