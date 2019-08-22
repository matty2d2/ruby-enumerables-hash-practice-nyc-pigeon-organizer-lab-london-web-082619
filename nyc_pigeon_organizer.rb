def nyc_pigeon_organizer(data)
  hash = {}

  data.each do |first_level, all_other| 
    all_other.each do |attribute, array|
      array.each do |name|
        hash[name] = {:color => [], :gender => [], :lives => []} 
      end 
    end 
  end 
  
  name_keys = hash.keys
  data[:color].each do |bird_color, name|
    name.each do |bird_name|
      name_keys.each do |item|
        if bird_name === item
          hash[item][:color] << bird_color.to_s
        end 
      end 
    end 
  end 
  
  data[:gender].each do |gender, name|
    name.each do |bird_name|
      name_keys.each do |item|
        if bird_name === item
          hash[item][:gender] << gender.to_s
        end 
      end 
    end 
  end 
  
  data[:lives].each do |location, name|
    name.each do |bird_name|
      name_keys.each do |item|
        if bird_name === item
          hash[item][:lives] << location
        end 
      end 
    end 
  end 
  
  return hash 
end
