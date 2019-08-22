def nyc_pigeon_organizer(data)
  final = {}

  data.each do |first_level, all_other| 
    all_other.each do |category, array|
      array.each do |name|
        final[name] = {:color => [], :gender => [], :lives => []} 
      end 
    end 
  end 
  
  name_keys = final.keys
  data[:color].each do |bird_color, name|
    name.each do |bird_name|
      name_keys.each do |item|
        if bird_name === item
          final[item][:color] << bird_color.to_s
        end 
      end 
    end 
  end 
  
  data[:gender].each do |gender, name|
    name.each do |bird_name|
      name_keys.each do |item|
        if bird_name === item
          final[item][:gender] << gender.to_s
        end 
      end 
    end 
  end 
  
  data[:lives].each do |location, name|
    name.each do |bird_name|
      name_keys.each do |item|
        if bird_name === item
          final[item][:lives] << location
        end 
      end 
    end 
  end 
  
  return final 
end
