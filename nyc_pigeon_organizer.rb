def nyc_pigeon_organizer(data)
  new_hash = {  }
  
  data.each do |attribute, description|
   
    description.each do |key, array|
      array.each do |name|
       
       if new_hash[name] == nil
        new_hash[name] = { }
        new_hash[name][attribute] = [key.to_s]
        
       else
         if new_hash[name][attribute] == nil
            new_hash[name][attribute] = [ ]
            new_hash[name][attribute].push(key.to_s)
        else
            new_hash[name][attribute].push(key.to_s)

    
end
end
  
end
end
  end  
  
  
  
  new_hash
end




pigeon_data = {
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
puts nyc_pigeon_organizer(pigeon_data)      