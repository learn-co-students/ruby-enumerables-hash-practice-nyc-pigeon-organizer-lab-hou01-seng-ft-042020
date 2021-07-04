require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
new_hash = make_bird_list(data)

  new_hash.reduce({}) do |memo, (key, value)|
    search_for_bird(data, :color, new_hash, key)
   # binding.pry
    search_for_bird(data, :gender, new_hash, key)
    search_for_bird(data, :lives, new_hash, key)
    memo
  end
  new_hash
end

def make_bird_list(data)
  new_hash = {}
    data[:color].reduce({}) do |memo, (key, value)|
      #need to store key as the key for our new hash
      #key is a color,  value is array of names in that color
      value.length.times do |index|
        bird_name = value[index]
        new_hash[bird_name] = {
            color: [],
            gender: [],
            lives: []}
      end 
    memo   
    end
 new_hash
end 

def search_for_bird(data, attribute, new_hash, bird_name)
  data[attribute].reduce({}) do |memo, (key, value)|
    find = value.include? bird_name
    if find
      new_hash[bird_name][attribute] << key.to_s
    end
    memo
  end
end 

=begin
data = {
  :color => {
    :brown => ["Luca"],
    :black => ["Lola"],
  },
  :gender => {
    :male => ["Luca"],
    :female => ["Lola"]
  },
  :lives => {
    "Central Park" => ["Lola"],
    "Library" => ["Luca"]
  }
}
data2 =  {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}
nyc_pigeon_organizer(data)
nyc_pigeon_organizer(data2)
=end